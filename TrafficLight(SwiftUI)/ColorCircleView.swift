//
//  ColorCircleView.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Lapov on 09.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let circleColor: Color
    let circleOpacity: Double

    var body: some View {
        Circle()
            .foregroundColor(circleColor)
            .opacity(circleOpacity)
            .frame(width: 140)
            .shadow(radius: 20)
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
            .padding(.bottom)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(circleColor: .red, circleOpacity: 0.5)
    }
}
