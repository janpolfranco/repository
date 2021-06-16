//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by John Paul M. Franco on 6/15/21.
//
import SwiftUI

struct ChangeLocationButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
