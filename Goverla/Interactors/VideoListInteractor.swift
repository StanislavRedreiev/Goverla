//
//  VideoListInteractor.swift
//  Goverla
//
//  Created by Stas Redreiev on 26.07.2023.
//

import Foundation

protocol VideoListInteractorProtocol {
    func fetchVideos(videosDataState: LoadableSubject<[Video]>)
}

struct VideoListInteractor: VideoListInteractorProtocol {

    func fetchVideos(videosDataState: LoadableSubject<[Video]>) {
        Task.init {
            do {
                try await Task.sleep(nanoseconds: 2_000_000_000)
                let videos = VideoList.videos
                
                await MainActor.run {
                    videosDataState.wrappedValue = .loaded(videos)
                }
            } catch {
                
            }
        }
    }
    
    
}
