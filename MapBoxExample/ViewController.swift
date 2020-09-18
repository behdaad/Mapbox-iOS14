//
//  ViewController.swift
//  MapBoxExample
//
//  Created by Mohammad Zakizadeh on 9/17/20.
//

import UIKit
import Mapbox

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "SmappStyleFa", withExtension: "json")
//        let url = Bundle.main.url(forResource: "SmappStyleEn", withExtension: "json")
        
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 35.7628756, longitude: 51.3304425), zoomLevel: 13, animated: false)
        view.addSubview(mapView)
    }
}
