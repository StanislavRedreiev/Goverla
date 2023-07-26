//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 21.07.2023.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNightMode: Bool
    
    var body: some View {
        
        let startColor: Color = isNightMode ? .black : .green
        let endColor: Color = isNightMode ? .gray : .cyan
        
        LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
