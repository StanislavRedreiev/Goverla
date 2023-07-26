//
//  VideoCellView.swift
//  Goverla
//
//  Created by Stas Redreiev on 26.07.2023.
//

import SwiftUI

struct VideoCellView: View {
    
    var video: Video
    
    var body: some View {
        HStack(alignment: .top) {
            Image(video.imageName)
                .resizable()
                        .scaledToFit()
                .frame(height: 70)
                .cornerRadius(6)
            
            VStack(alignment: .leading) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
