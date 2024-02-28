//
//  PersistenceController.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 27/02/2024.
//

import Foundation
import CoreData

class PersistenceController: ObservableObject {
	
	static let shared = PersistenceController()

	let container: NSPersistentContainer

	private init(inMemory: Bool = false) {
		container = NSPersistentContainer(name: "TaskDB")
		if inMemory {
			container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
		}
		container.loadPersistentStores { _, error in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		}
		container.viewContext.automaticallyMergesChangesFromParent = true
	}
}
