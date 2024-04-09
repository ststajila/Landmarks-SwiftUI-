//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/2/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
