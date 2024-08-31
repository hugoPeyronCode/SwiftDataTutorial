//
//  SwiftDataTutorialApp.swift
//  SwiftDataTutorial
//
//  Created by Hugo Peyron on 31/08/2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Lesson.self], isAutosaveEnabled: true, isUndoEnabled: true)
    }
}
