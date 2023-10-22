//
//  ImagePickerManager.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import UIKit
import MobileCoreServices
import AVFoundation

public struct ImagePickerManagerConfiguration {
    public init() {}

    /// Select the media type in library default is photo
    var mediaType = MediaType.photo
    
    /// Max video duration default is 10
    var videoMaximumDuration: TimeInterval = 10
}

public struct MediaPhoto {
    
    var imageURL: URL
    var absoluteStringURL: String
    var image: UIImage
}

public struct MediaVideo {
    
    var imageURL: URL
    var absoluteStringURL: String
    var thumnail: UIImage
}

enum MediaPicker {
    case photo(photo: MediaPhoto)
    case video(video: MediaVideo)
}

//MARK: - Media Type
enum MediaType: String {
    case photo
    case video
    case photoAndVideo
    
    var value: [String] {
        
        switch self {
        case .photo:
            return ["public.image"]
        case .video:
            return ["public.movie"]
        default:
            return ["public.image", "public.movie"]
        }
    }
}

final class MTImagePickerManager: NSObject {
    
    private let imagePicker: UIImagePickerController
    private weak var presentationController: UIViewController?
    private var configuration: ImagePickerManagerConfiguration?
    
    var didFinishSelection: ((MediaPicker)-> Void)?
    
    public required init(configuration: ImagePickerManagerConfiguration, on: UIViewController) {
        self.imagePicker = UIImagePickerController()

        super.init()
        
        self.configuration = configuration
        self.presentationController = on

        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        self.imagePicker.mediaTypes = configuration.mediaType.value
        self.imagePicker.videoMaximumDuration = configuration.videoMaximumDuration
    }
    
    func didFinishSelection(completion: @escaping (MediaPicker)-> Void) {
        
        //Call back
        self.didFinishSelection = completion
        
        AVCaptureDevice.requestAccess(for: .video) { success in
            
            if success {
                
                DispatchQueue.main.async {
                    self.takeImage()
                }
            } else {
                Services.showErrorAlert(with: "camara permission is required to use this feature")
            }
        }
    }
    
    private func takeImage(){
        
        let cameraAction = UIAlertAction(title: "Camera", style: UIAlertAction.Style.default) { UIAlertAction in
            self.openGallaryOrCamera(sourceType: .camera)
        }
        
        let gallaryAction = UIAlertAction(title: "Gallery", style: UIAlertAction.Style.default) { UIAlertAction in
            self.openGallaryOrCamera(sourceType: .photoLibrary)
        }
        
        let cancelActionButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        Services.showAlert(style: .actionSheet, title: "Choose option", message: nil, actions: [cameraAction, gallaryAction, cancelActionButton], completion: nil)
    }
    
    private func openGallaryOrCamera(sourceType: UIImagePickerController.SourceType) {

        guard (UIImagePickerController.isSourceTypeAvailable(sourceType)) else {
            Services.showErrorAlert(with: "Camera not Available")
            return
        }
        
        imagePicker.sourceType = sourceType
        presentationController?.present(imagePicker, animated: true, completion: nil)
    }
    
    private func selectedImage(imageURL: URL, picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)


        let photo = MediaPhoto(imageURL: imageURL, absoluteStringURL: imageURL.absoluteString, image: setImageFromLocalURL(imageURL: imageURL))
        self.didFinishSelection?(MediaPicker.photo(photo: photo))
    }
    
    private func selectedVideo(videoURL: URL, picker: UIImagePickerController) {
        
    }
    
    func setImageFromLocalURL(imageURL: URL) -> UIImage {
        
        guard let data = try? Data(contentsOf: imageURL) else {return UIImage()}
        return UIImage(data: data) ?? UIImage()
    }
    
    private func saveImageAndGetUrl(image: UIImage, imageName: String = "")-> URL? {
        
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        let fileName = Date()//AppManager.shared.user?.id
        let fileURL = documentsDirectory.appendingPathComponent("\(fileName)")
        guard let data = image.jpegData(compressionQuality: 1) else { return nil }
        
        //Checks if file exists, removes it if so.
        if FileManager.default.fileExists(atPath: fileURL.path) {
            do {
                try FileManager.default.removeItem(atPath: fileURL.path)
                print("Removed old image")
            } catch let removeError {
                print("couldn't remove file at path", removeError)
                return nil
            }
        }
        
        do {
            try data.write(to: fileURL)
            return fileURL
            
        } catch let error {
            print("error saving file with error", error)
            return nil
        }
    }
}

//MARK: - UIImagePickerControllerDelegate
extension MTImagePickerManager : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        //Capture image from Camera
        if let image = info[.editedImage] as? UIImage {
            
            if let imageURL = saveImageAndGetUrl(image: image) {
                
                self.selectedImage(imageURL: imageURL, picker: picker)
            } else {
                Services.showAlert(style: .alert, title: "", message: "Error while saving image")
            }
            
            print("Capture Image Picked")
            picker.dismiss(animated: true, completion: nil)
        }
        
        //Capture image from Camera
        if let image = info[.originalImage] as? UIImage {
            
            if let imageURL = saveImageAndGetUrl(image: image) {
                
                self.selectedImage(imageURL: imageURL, picker: picker)
            } else {
                Services.showAlert(style: .alert, title: "", message: "Error while saving image")
            }
            
            print("Capture Image Picked")
            picker.dismiss(animated: true, completion: nil)
        }
        
        //Pick Image from Gallary
        if let imageURL = info[.imageURL] as? URL {
            
            self.selectedImage(imageURL: imageURL, picker: picker)
            return
        }
        
        //Picked Video
        if let mediaType = info[.mediaURL] as? URL {
            
            self.selectedVideo(videoURL: mediaType, picker: picker)
        }
    }
    
    //MARK: - Add image to Library
//    func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
//        // we got back an error!
//
//        Services.showErrorAlert(with: error!.localizedDescription)
//    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
