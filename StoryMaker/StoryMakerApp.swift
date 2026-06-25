//
//  StoryMakerApp.swift
//  StoryMaker
//
//  Created by Sam Helbig on 25.06.26.
//

import SwiftUI
import SwiftData

@main
struct StoryMakerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            StartView()
                .modelContainer(sharedModelContainer)
        }
        .commands {
            CommandGroup(replacing: .newItem) {
                Button("Neues Storyboard") { /* ... */ }
                Button("Storyboard laden") { }
            }
            CommandGroup(replacing: .appInfo) {
                Button("Einstellungen") { /* ... */ }
            }
            CommandMenu("Storyboards") {
                Button("Importieren") { /* ... */ }
            }
        }
    }
}
