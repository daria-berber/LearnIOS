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
                Text("")
                    
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(16)
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                                            
                    Text("28°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                       
                Spacer()
                
                
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
