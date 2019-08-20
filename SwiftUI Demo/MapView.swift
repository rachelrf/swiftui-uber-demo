//
//  MapView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import SwiftUI
import MapKit

let iconSize: CGFloat = 20.0

class PinAnnotation : NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    override init() {
        self.coordinate = CLLocationCoordinate2D()
        super.init()
    }
    
    init(_ coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        super.init()
    }
    
}

class MapViewModel: NSObject , MKMapViewDelegate {
    
    var annotations: [PinAnnotation] = []
    
    override init() {
        super.init()
        let driverPin = PinAnnotation(CLLocationCoordinate2D(
            latitude: 37.7756852, longitude: -122.4201594))
        annotations.append(driverPin)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // todo: switch based on annotation type
        let view = MKAnnotationView()
        if let pinImage = UIImage(named: "driver_icon") {
            view.image = pinImage
        }
        
        view.frame.size.height = 42
        view.frame.size.width = 42
        return view
    }
}

struct MapView: UIViewRepresentable {
    
    let mapViewModel = MapViewModel()
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.delegate = mapViewModel
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 37.7756852, longitude: -122.4201594)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        view.removeAnnotations(view.annotations)
        for pin in mapViewModel.annotations {
            view.addAnnotation(pin)
        }
    }
    
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
