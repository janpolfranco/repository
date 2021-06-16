//
//  ContentView.swift
//  WeatherApp
//
//  Created by John Paul M. Franco on 6/15/21.
//

import SwiftUI

struct ContentView: View {

    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "Manila, PH")
                MainWeatherStatusView(iconName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 27)
                
                HStack(spacing: 20) {
                    WeatherDayView(day: "TUE",
                                   iconName: isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   temp: 26)
                    WeatherDayView(day: "WED",
                                   iconName: isNight ? "moon.stars.fill" : "sun.max.fill",
                                   temp: 29)
                    WeatherDayView(day: "THUR",
                                   iconName: isNight ? "cloud.moon.rain.fill" : "cloud.rain.fill",
                                   temp: 20)
                    WeatherDayView(day: "FRI",
                                   iconName: isNight ? "cloud.moon.bolt.fill" : "cloud.sun.bolt.fill",
                                   temp: 22)
                    WeatherDayView(day: "SAT",
                                   iconName: isNight ? "cloud.moon.rain.fill" : "cloud.heavyrain.fill",
                                   temp: 20)
                }
                
                Spacer()
                
                
                Button {
                    isNight.toggle()
                } label: {
                    ChangeLocationButton(title: "Change Day Time",
                                         textColor: .blue,
                                         backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var day: String
    var iconName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
            Text("\(temp)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var iconName: String
    var temp: Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
}
