//
//  HeaderView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import SwiftUI

let imageSize: CGFloat = 50.0
let borderWidth: CGFloat = 2.0
let shadowRadius: CGFloat = 10.0

struct LocationSearchView: View {
    var body: some View {
        Image(systemName: "magnifyingglass")
        .resizable()
        .aspectRatio(1.0, contentMode: .fit)
        .padding()
        .frame(width: imageSize, height: imageSize, alignment: .center)
        .background(Color.white)
        .cornerRadius(imageSize/2)
        .shadow(radius: shadowRadius)
    }
}

struct DollaDollaBillsView: View {
    var earningsCurrency = Text("$").color(Color(red:156/255, green:216/255, blue:194/255))
    var earningsAmount = Text("0.00").color(.white)
    
    var body: some View {
        let earningsLabel = earningsCurrency + earningsAmount
        return earningsLabel
            .font(.system(size: 20))
            .bold()
            .frame(width: imageSize * 2, height: imageSize, alignment: .center)
            .background(Color.black)
            .cornerRadius(imageSize/2)
            .border(Color.white, width: borderWidth, cornerRadius: imageSize/2)
            .shadow(radius: shadowRadius)
    }
}

struct ProfileView: View {
    var body: some View {
        Image("profile_picture")
        .resizable()
        .cornerRadius(imageSize/2)
        .aspectRatio(1.0, contentMode: .fit)
        .frame(width: imageSize, height: imageSize, alignment: .center)
        .border(Color.white, width: borderWidth, cornerRadius: imageSize/2)
        .shadow(radius: shadowRadius)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            LocationSearchView()
            Spacer()
            DollaDollaBillsView()
            Spacer()
            ProfileView()
        }
        .padding(.horizontal)
    }
}

struct Header_Preview: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
