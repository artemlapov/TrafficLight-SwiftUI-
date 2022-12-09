//
//  ContentView.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Lapov on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var opacityOfRed = 0.5
    @State var opacityOfYellow = 0.5
    @State var opacityOfGreen = 0.5
    @State var buttonText = "START"
    @State var numberOfClicks = 0
    let lightIsOn = 1.0
    let lightIsOff = 0.5

    var body: some View {
        VStack {
            ColorCircleView(circleColor: .red, circleOpacity: opacityOfRed)
            ColorCircleView(circleColor: .yellow, circleOpacity: opacityOfYellow)
            ColorCircleView(circleColor: .green, circleOpacity: opacityOfGreen)
            Spacer()
            Button(action: buttonDidTapped) {
                Text(buttonText)
                    .font(.title)
                    .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
            }
            .buttonStyle(.borderedProminent)
            .clipShape(Capsule())
            .shadow(radius: 20)
        }
        .padding()
    }

    private func buttonDidTapped() {
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        numberOfClicks += 1
        switch numberOfClicks % 3 {
        case 1:
            opacityOfRed = lightIsOn
            opacityOfGreen = lightIsOff
        case 2:
            opacityOfYellow = lightIsOn
            opacityOfRed = lightIsOff
        default:
            opacityOfGreen = lightIsOn
            opacityOfYellow = lightIsOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
