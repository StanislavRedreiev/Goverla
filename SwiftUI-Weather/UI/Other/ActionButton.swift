//
//  ActionButton.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 21.07.2023.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    var action: (() -> ())?
    
    var body: some View {
        Button {
            action?()
        } label: {
            Text(title)
                .frame(width: 300, height: 50)
                .background(Color.white)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(8.0)
        }
    }
}
