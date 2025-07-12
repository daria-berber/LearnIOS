//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Daria . on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView (imageName: isNight ? "sparkles" :
                                       "cloud.sun.fill",
                                       temperature: 28)
                
                
                
                HStack (spacing: 20) {
                    WeatherdaysView(dayOfWeek: "TUE",
                                    imageName: "cloud.sun.fill",
                                    temperature: 20)
                    
                    WeatherdaysView(dayOfWeek: "WED",
                                    imageName: "cloud.sun.rain.fill",
                                    temperature: 19)
                    
                    WeatherdaysView(dayOfWeek: "THU",
                                    imageName: "sun.rain.fill",
                                    temperature: 23)
                    
                    WeatherdaysView(dayOfWeek: "FRI",
                                    imageName: "cloud.sleet.fill",
                                    temperature: 3)
                    
                    WeatherdaysView(dayOfWeek: "SAT",
                                    imageName: "cloud.moon.rain.fill",
                                    temperature: 12)
                    
                    
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label : {
                    WeatherButton(title: "Change Time of a Day",
                                  textColour: .white,
                                  backgroundColour: .mint)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}



struct WeatherdaysView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text (dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .foregroundStyle(.orange)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text ("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
            
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
//                       startPoint: .topTrailing ,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(16)
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

