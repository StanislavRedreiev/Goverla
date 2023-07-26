//
//  WeatherView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 21.07.2023.
//

import SwiftUI

struct WeatherView: View {
    
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: .center)
            Text("\(temperature)°")
                .font(.system(size: 70.0, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 50)
    }
}
