//
//  DIContainer.swift
//  Goverla
//
//  Created by Stas Redreiev on 26.07.2023.
//

import Foundation
import SwiftUI

struct AppState {
    
}

struct DIContainer: EnvironmentKey {
    let appState: AppState
    let interactors: Interactors
    
    init(appState: AppState, interactors: Interactors) {
        self.appState = appState
        self.interactors = interactors
    }
}

extension DIContainer {
    
    struct Interactors {
        let videoListInteractor: VideoListInteractorProtocol
    }
}
