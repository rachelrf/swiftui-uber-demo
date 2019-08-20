//
//  GoButtonView.swift
//  SwiftUI Demo
//
//  Created by Rachel RoseFigura on 6/12/19.
//  Copyright © 2019 Rachel RoseFigura. All rights reserved.
//

import SwiftUI

let buttonSize: CGFloat = 50

struct GoButtonAnimation: View {
    @State private var shouldGrow = true
    
    var body: some View {
        Circle()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                self.shouldGrow = false
                withAnimation(Animation.basic(duration: 2).repeatForever(autoreverses: false)) {
                    self.shouldGrow = true
                }
            }
        }
        .foregroundColor(Color.clear)
        .frame(width: buttonSize, height: buttonSize, alignment: .center)
        .border(Color.white, width: 1, cornerRadius: buttonSize / 2)
        .opacity(shouldGrow ? 0.0 : 1.0)
        .scaleEffect(shouldGrow ? 1.5 : 1.15)
    }
}

struct GoButtonView: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                Button(action: {print("Go Go Power Rangers")}) {
                    Text("GO")
                        .color(.white)
                        .font(.title)
                        .bold()
                    }
                    .padding(25)
                    .background(Color(red:39/255, green:110/255, blue:241/255))
                    .mask(Circle())
                    .shadow(radius: shadowRadius)
                Spacer()
            }
            GoButtonAnimation()
        }
    }
}

struct GoButton_Preview: PreviewProvider {
    static var previews: some View {
        GoButtonView()
    }
}
