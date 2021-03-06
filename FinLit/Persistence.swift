//
//  Persistence.swift
//  FinLit
//
//  Created by Farendza Muda on 14/11/21.
//

import Foundation
import CoreData

struct PersistenceController {
    // A singleton for our entire app to use
    static let shared = PersistenceController()
    
    // Storage for Core Data
    let container: NSPersistentContainer
    
    // An initializer to load Core Data, optionally able to use an in-memory store.
    init(inMemory: Bool = false){
        container = NSPersistentContainer(name: "FinLit")
        
        if inMemory{
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        
        
        container.loadPersistentStores{ (description, error) in
            if let error = error {
                fatalError("Error: \(error.localizedDescription)")
            }
            
        }
    }
    
    func save (completion: @escaping (Error?) -> () = {_ in}) {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
                completion(nil)
            } catch {
                completion(error)
            }
        }
    }
    
    func delete(_ object: NSManagedObject, completion: @escaping (Error?) -> () = {_ in}) {
        let context = container.viewContext
        context.delete(object)
        save(completion: completion)
    }
}
