//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 21.07.2023.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8.0) {
            Text(dayOfWeek)
                .font(.system(size: 16.0, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            Text("\(temperature)°")
                .font(.system(size: 28.0, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
