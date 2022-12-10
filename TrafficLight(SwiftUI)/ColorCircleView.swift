//
//  ColorCircleView.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Lapov on 09.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double

    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 140)
            .shadow(radius: 20)
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.5)
    }
}
