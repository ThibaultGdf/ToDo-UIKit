//
//  Record.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Record
struct Record: Codable {
	let id, createdTime: String
	let fields: Fields
}
