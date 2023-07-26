//
//  CityView.swift
//  Goverla
//
//  Created by Stas Redreiev on 21.07.2023.
//

import SwiftUI

struct CityView: View {
    
    var city: String
    
    var body: some View {
        Text(city)
            .font(.system(size: 32.0, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(8)
    }
}

