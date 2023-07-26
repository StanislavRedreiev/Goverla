//
//  VideoListView.swift
//  Goverla
//
//  Created by Stas Redreiev on 25.07.2023.
//

import SwiftUI

struct VideoListView: View {
    
    var videosDataState: Loadable<[Video]> = .notRequested
    @Environment(\.injected) private var injected: DIContainer
    
    var body: some View {
        NavigationView {
            content
        }
        .onAppear() {
            
            // ask interactor to fetch videos
        }
    }
    
    @ViewBuilder private var content: some View {
        switch videosDataState {
        case .notRequested:
            Text("No videos")
        case .isLoading:
            Text("Videos are loading")
        case .loaded(let videos):
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video)) {
                    VideoCellView(video: video)
                }
            }
            .navigationTitle("Tutorials")
        case .failed(let error):
            Text("Something went wrong: \(error.localizedDescription)")
        }
    }
}



struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
