//
//  FinLitApp.swift
//  FinLit
//
//  Created by Farendza Muda on 01/11/21.
//

import SwiftUI

@main
struct FinLitApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) {(newScenePhase) in
            switch newScenePhase{
            case .background:
                print("Scene is in background")
                persistenceController.save()
            case .inactive:
                print("scene is inactive")
            case .active:
                print("scene is active")
            default:
                print("Apple must have changed something")
            }
        }
    }
}
