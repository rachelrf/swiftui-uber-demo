//
//  UberMapView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import Foundation
import SwiftUI

struct UberMapView: View {
    var body: some View {
        ZStack {
            MapView()
            .edgesIgnoringSafeArea(.top)
            VStack {
                HeaderView()
                .padding(.top, 8)
                Spacer()
                GoButtonView()
                .padding()
            }
        }
    }
}

struct UberMapView_Preview: PreviewProvider {
    static var previews: some View {
        UberMapView()
    }
}

