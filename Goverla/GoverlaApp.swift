//
//  GoverlaApp.swift
//  Goverla
//
//  Created by Stas Redreiev on 20.07.2023.
//

import SwiftUI

@main
struct GoverlaApp: App {
    var body: some Scene {
        WindowGroup {
            let diContainer = AppEnvironment.bootstrap().container
            VideoListView().inject(diContainer)
        }
    }
}
