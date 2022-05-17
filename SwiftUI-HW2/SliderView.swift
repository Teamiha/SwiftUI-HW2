//
//  SliderView.swift
//  SwiftUI-HW2
//
//  Created by Михаил Светлов on 16.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @FocusState private var focusedField: Bool
    let sliderColor: Color
    let focusState: FocusState<Bool>.Binding
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.maximum = 255
            formatter.minimum = 0
            return formatter
        }()
    
    var body: some View {
        HStack {
            Text(String(lround(value)))
                .frame(width: 40, height: 20)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(sliderColor)
            TextField("0", value: $value, formatter: formatter)
                .bordered()
                .keyboardType(.decimalPad)
                .focused(focusState)
        }
        .padding(.horizontal)
    }
}

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 30, alignment: .center)
            .padding(EdgeInsets(top: 3, leading: 8, bottom: 3, trailing: -10))
           
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
                    .shadow(color: Color.gray.opacity(0.5), radius: 3, x: 1, y: 2)
            )
    }
}

extension TextField {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderedViewModifier())
    }
}

