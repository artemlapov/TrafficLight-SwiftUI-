//
//  ContentView.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Lapov on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacityOfRed = 0.5
    @State private var opacityOfYellow = 0.5
    @State private var opacityOfGreen = 0.5
    @State private var buttonText = "START"
    @State private var currentLight = CurrentLight.green

    var body: some View {
        VStack {
            ColorCircleView(color: .red, opacity: opacityOfRed)
                .padding(.bottom)
            ColorCircleView(color: .yellow, opacity: opacityOfYellow)
                .padding(.bottom)
            ColorCircleView(color: .green, opacity: opacityOfGreen)
                .padding(.bottom)

            Spacer()
            startButton
        }
        .padding()
    }

    private func buttonDidTapped() {
        let lightIsOn = 1.0
        let lightIsOff = 0.5

        if buttonText == "START" {
            buttonText = "NEXT"
        }

        switch currentLight {
        case .green:
            opacityOfRed = lightIsOn
            opacityOfGreen = lightIsOff
            currentLight = .red
        case .red:
            opacityOfYellow = lightIsOn
            opacityOfRed = lightIsOff
            currentLight = .yellow
        case .yellow:
            opacityOfGreen = lightIsOn
            opacityOfYellow = lightIsOff
            currentLight = .green
        }
    }

    private var startButton: some View {
        Button(action: buttonDidTapped) {
            Text(buttonText)
                .font(.title)
                .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        }
        .buttonStyle(.borderedProminent)
        .clipShape(Capsule())
        .shadow(radius: 20)
        .overlay(Capsule().stroke(Color.white, lineWidth: 1))

    }

    private enum CurrentLight {
        case red, yellow, green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
