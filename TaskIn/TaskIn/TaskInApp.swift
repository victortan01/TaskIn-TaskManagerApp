//
//  TaskInApp.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUI

@main
struct TaskInApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SummaryView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
