//
//  VideoDetailView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 25.07.2023.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("\(video.uploadDate)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url) {
                Text("Watch now")
                    .font(.title2)
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.videos.first!)
    }
}
