//
//  SliderView.swift
//  SwiftUI-HW2
//
//  Created by Михаил Светлов on 16.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text(String(lround(value)))
                .frame(width: 40, height: 20)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(sliderColor)
            TextField("0", value: $value, format: .number)
                .frame(width: 50, height: 30, alignment: .center)
                .padding(EdgeInsets(top: 3, leading: 8, bottom: 3, trailing: -10))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.blue)
                )
                .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            
            
        }
        .padding(.horizontal)
    }
}

struct SliderView_Previews: PreviewProvider {
    
    static var previews: some View {
        SliderView(value: .constant(100), sliderColor: .green)
    }
}
