//
//  The_MovieApp.swift
//  The Movie
//
//  Created by Ajo Alex on 14/08/24.
//

import SwiftUI

@main
struct The_MovieApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
