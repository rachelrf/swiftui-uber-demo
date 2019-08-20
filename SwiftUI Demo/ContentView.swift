//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            UberMapView()
            TripPlannerView()
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
