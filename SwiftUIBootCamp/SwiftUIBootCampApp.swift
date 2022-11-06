//
//  SwiftUIBootCampApp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

@main
struct SwiftUIBootCampApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ArraysBootcamp()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
