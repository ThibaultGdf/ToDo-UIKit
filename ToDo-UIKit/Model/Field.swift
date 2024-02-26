//
//  Field.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Field
struct Field: Codable {
	let priority: String
	let task: String
	//let toDoBefore: String

	enum CodingKeys: String, CodingKey {
		case priority = "Priority"
		case task = "Task"
		//case toDoBefore = "To do before"
	}
}
