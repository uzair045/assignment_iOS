//
//  MapViewController.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 16/10/2023.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var mapView: MKMapView!
    
    
    // MARK: - Class Properties
    private let locationManager = LocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        mapView.delegate = self
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.requestLocationPermission()
    }
}

// MARK: - Setup View
extension MapViewController {
    
    private func setupUI() {
        self.navigationItem.setTitleImage()
    }
    
    private func setupMapView() {
        let coordinate = CLLocationCoordinate2D(latitude: 25.223442477478287, longitude: 55.3525656833845)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
            self.mapView.setRegion(region, animated: true)
        }
    }
}

extension MapViewController: MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let annotation = annotation as? MKPointAnnotation else {
            return nil
        }

        let reuseIdentifier = "pin"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier) as? CustomAnnotationView
        if annotationView == nil {
            annotationView = CustomAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
        }
        annotationView?.image = UIImage(named: "pin")
        annotationView?.canShowCallout = true

        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect annotation: MKAnnotation) {
        guard let annotation = annotation as? MKPointAnnotation else {
            return
        }
        
        let vc = VehicleDetailsViewController.instantiate(fromAppStoryboard: .main)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


class CustomAnnotationView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        didSet {
            if annotation is MKPointAnnotation {
                image = UIImage(named: "marker")
                centerOffset = CGPoint(x: 0, y: -image!.size.height / 2)
            }
        }
    }
}

// MARK: - Location Manager Delegate Methods
extension MapViewController: LocationManagerDelegate {
    func locationManager(didUpdateLocation location: CLLocation) {
        self.locationManager.stopUpdatingLocation()
        self.setupMapView()
    }
    
    func locationManager(didFailWithError error: Error) {
        debugPrint("Failed to fetch location")
    }
}
