//
//  AppEnvironment.swift
//  Goverla
//
//  Created by Stas Redreiev on 26.07.2023.
//

import Foundation

struct AppEnvironment {
    let container: DIContainer
    // Need to add handlers, for example, systemEventsHandler.
}

extension AppEnvironment {
    
    static func bootstrap() -> AppEnvironment {
        
        let appState = AppState()
        let interactors = configuredInteractors(appState: appState)
        
        let diContainer = DIContainer(appState: appState, interactors: interactors)
        
        return AppEnvironment(container: diContainer)
    }
    
    private static func configuredInteractors(appState: AppState) -> DIContainer.Interactors {
        
        let videoListInteracror = VideoListInteractor(appState: appState, repository: VideoListRepository())
        // Add and configure other interactors here
        // ...
        
        return DIContainer.Interactors(videoListInteractor: videoListInteracror)
    }
}
