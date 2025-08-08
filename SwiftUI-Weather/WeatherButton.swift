//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Daria . on 07.07.2025.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColour: Color
    var backgroundColour: Color
    
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColour.gradient)
            .foregroundColor(textColour)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}


