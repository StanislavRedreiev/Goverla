//
//  VideoListView.swift
//  SwiftUI-Weather
//
//  Created by Stas Redreiev on 25.07.2023.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.videos
    var body: some View {
        
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video))
                {
                    VideoCellView(video: video)
                }
                
            }
            .navigationTitle("Tutorials")
        }
    }
}

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

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
