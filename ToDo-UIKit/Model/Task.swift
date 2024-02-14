//
//  Task.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Task
struct Task: Codable {
	let records: [Record]
}

class TaskService {
	func getTask() -> [Task] {
		let tasks = [Task(
			records: [Record(
				id: "",
				createdTime: "",
				fields: Fields(priority: "", task: "", toDoBefore: "")
			)]
		)]
		return tasks
	}
}
