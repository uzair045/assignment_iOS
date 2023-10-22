//
//  Services.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import Foundation
import UIKit

class Services {
    
    static var rootViewController: UIViewController? {
        return UIApplication.shared.topMostViewController()
    }
    
    static func showAlert(style: UIAlertController.Style, title: String?, message: String?, actions: [UIAlertAction] = [UIAlertAction(title: "Ok", style: .default, handler: nil)], completion: (() -> Swift.Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        for action in actions {
            alert.addAction(action)
        }
        rootViewController?.present(alert, animated: true, completion: completion)
        
    }
    
    static func showErrorAlert(with message: String) {
        showAlert(style: .alert, title: "Error", message: message)
    }
}

// MARK: - Show ActionSheet
extension Services {
    static func showActionSheet(with array: [String], title: String, completion: @escaping ((String, Int) -> Void)) {
        var alertActions = array.map({UIAlertAction(title: $0, style: .default) { value in
            
            guard let index = array.firstIndex(where: {$0 == value.title}) else { return }
            completion(array[index], index)
        }})
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        cancelAction.setValue(UIColor.red, forKey: "titleTextColor")
        alertActions.append(cancelAction)
        
        UILabel.appearance(whenContainedInInstancesOf: [UIAlertController.self]).numberOfLines = 2
        UILabel.appearance(whenContainedInInstancesOf: [UIAlertController.self]).lineBreakMode = .byWordWrapping
        
        Services.showAlert(style: .actionSheet, title: title, message: "", actions: alertActions, completion: nil)
    }
}

//MARK: - Image Picker
extension Services {
    
//    static func setImage(imageView: UIImageView, imageUrl: String?, placeholder imageName: String) {
//
//        if imageUrl == nil {
//            imageView.image = UIImage(named: imageName)
//            return
//        }
//
//        guard let urlString = imageUrl, let URL = URL(string: urlString) else {
//            imageView.image = UIImage(named: imageName)
//            return
//        }
//
//        imageView.sd_imageIndicator = SDWebImageActivityIndicator.grayLarge
//        imageView.sd_setImage(with: URL, placeholderImage: UIImage(named: "splash_ic"), options: .progressiveLoad, completed: nil)
//    }
}
