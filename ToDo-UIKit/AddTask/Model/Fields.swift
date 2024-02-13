//
//  Fields.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Fields
struct Fields: Codable {
	let priority, task, toDoBefore: String

	enum CodingKeys: String, CodingKey {
		case priority = "Priority"
		case task = "Task"
		case toDoBefore = "To do before"
	}
}
