//
//  StorageManager.swift
//  ChildsDay
//
//  Created by Юрий Альт on 05.02.2022.
//

import CoreData

class StorageManager {
    
    static let shared = StorageManager()
    
    //MARK: Core Data stack
    
    private let persistantConteiner: NSPersistentContainer = {
        let conteiner = NSPersistentContainer(name: "Storage")
        conteiner.loadPersistentStores { storageDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolver error \(error), \(error.userInfo)")
            }
        }
        return conteiner
    }()
    
    private let viewContext: NSManagedObjectContext
    private init() {
        viewContext = persistantConteiner.viewContext
    }

    // MARK: CoreData saving support
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
