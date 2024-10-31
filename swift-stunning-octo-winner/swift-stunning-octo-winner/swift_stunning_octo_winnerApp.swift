//
//  swift_stunning_octo_winnerApp.swift
//  swift-stunning-octo-winner
//
//  Created by m1_air on 10/29/24.
//

import SwiftUI
import SwiftData

@main
struct swift_stunning_octo_winnerApp: App {
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
