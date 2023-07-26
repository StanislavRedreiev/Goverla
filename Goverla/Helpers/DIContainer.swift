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
    
    static var defaultValue: Self { Self.default }
    private static let `default` = Self(appState: AppState(), interactors: Interactors.stub)
}

extension DIContainer {
    
    struct Interactors {
        let videoListInteractor: VideoListInteractorProtocol
        
        static var stub: Self {
            Interactors(videoListInteractor: StubVideoListInteractor())
        }
    }
}

extension EnvironmentValues {
    var injected: DIContainer {
        get { self[DIContainer.self] }
        set { self[DIContainer.self] = newValue }
    }
}

// MARK: - Injection in the view hierarchy

extension View {
    
    func inject(_ appState: AppState,
                _ interactors: DIContainer.Interactors) -> some View {
        let container = DIContainer(appState: appState,
                                    interactors: interactors)
        return inject(container)
    }
    
    func inject(_ container: DIContainer) -> some View {
        return self
            //.modifier(RootViewAppearance())
            .environment(\.injected, container)
    }
}
