//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Daria . on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topTrailing ,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA - Daria")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 32)
                Text("28°C")
                Spacer(minLength: 0)
                te
                
            }
        }
    }
}

#Preview {
    ContentView()
}
