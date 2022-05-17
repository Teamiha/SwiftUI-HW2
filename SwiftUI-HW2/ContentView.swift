//
//  ContentView.swift
//  SwiftUI-HW2
//
//  Created by Михаил Светлов on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = 100.0
    @State private var greenColor = 100.0
    @State private var blueColor = 100.0
    
    
    
    var body: some View {
        VStack (spacing: 20) {
            Color(.init(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1))
                .frame(width: 300, height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 5)
                    .foregroundColor(.blue)
            )
            .cornerRadius(30)
            .padding()
            SliderView(value: $redColor, sliderColor: .red)
            SliderView(value: $greenColor, sliderColor: .green)
            SliderView(value: $blueColor, sliderColor: .blue)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
