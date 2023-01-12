//
//  financeApp.swift
//  finance
//
//  Created by Francisco Santana Cardoso on 11/01/23.
//

import SwiftUI

@main
struct financeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
