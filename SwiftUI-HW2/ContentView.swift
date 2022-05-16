//
//  ContentView.swift
//  SwiftUI-HW2
//
//  Created by Михаил Светлов on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = 10.0
    @State private var greenColor = 100.0
    @State private var blueColor = 100.0
    
    
    
    var body: some View {
        VStack {
            Color(.init(red: 10 / 255, green: 10 / 255, blue: 10 / 255, alpha: 1))
                .frame(width: 330, height: 150)
            .cornerRadius(30)
            Spacer()
            SliderView(value: $redColor, sliderColor: .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
