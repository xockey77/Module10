//
//  ScrollViewController.swift
//  Module10
//
//  Created by username on 10.11.2021.
//

import UIKit
import MapKit


class ScrollViewController: UIViewController {
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 55.156504, longitude: 61.315631) //мои координаты
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttons: [UIButton] = [createButton, orderButton, menuButton]
        
        for button in buttons {
            button.layer.borderWidth = 3.0
            button.layer.borderColor = UIColor.systemGreen.cgColor
            button.layer.cornerRadius = 15.0
            button.clipsToBounds = true
        }
        mapView.centerToLocation(initialLocation)
    }
    
}

private extension MKMapView {
    func centerToLocation(_ location: CLLocation, regionRadius: CLLocationDistance = 500) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
    }
}
