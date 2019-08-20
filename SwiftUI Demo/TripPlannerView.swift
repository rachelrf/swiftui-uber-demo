//
//  TripPlannerView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import SwiftUI

struct TripPlannerView: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.up")
            Spacer()
            Text("You're offline")
            .font(.system(size: 22))
            Spacer()
            Image(systemName: "list.bullet")
        }
        .padding()
    }
}
    
struct TripPlanner_Preview: PreviewProvider {
    static var previews: some View {
        TripPlannerView()
    }
}
