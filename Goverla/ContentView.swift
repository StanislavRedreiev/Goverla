//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNightMode: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNightMode: $isNightMode)
            
            VStack {
                CityView(city: "Kyiv, Ukraine")
                    .padding(.bottom, 50)
                
                WeatherView(weatherIcon: isNightMode ? "moon.stars.fill" : "sun.max.fill", temperature: 81)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "MON", weatherIcon: "cloud.sun.fill", temperature: 55)
                    WeatherDayView(dayOfWeek: "TUE", weatherIcon: "cloud.sun.rain.fill", temperature: 67)
                    WeatherDayView(dayOfWeek: "WED", weatherIcon: "cloud.drizzle.fill", temperature: 61)
                    WeatherDayView(dayOfWeek: "THU", weatherIcon: "cloud.heavyrain.fill", temperature: 59)
                    WeatherDayView(dayOfWeek: "FRI", weatherIcon: "sun.max.fill", temperature: 68)
                }
                Spacer()
                
                ActionButton(title: "Change day time") {
                    isNightMode.toggle()
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
