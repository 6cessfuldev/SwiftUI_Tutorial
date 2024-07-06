//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 육성민 on 7/3/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
