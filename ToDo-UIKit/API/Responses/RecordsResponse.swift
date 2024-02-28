//
//  RecordsResponse.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 27/02/2024.
//

import Foundation

struct RecordsResponse: Decodable {
	
	struct RecordItem: Decodable {
		
		struct FieldsItem: Decodable {
			
			enum CodingKeys: String, CodingKey {
				case priority = "Priority"
				case task = "Task"
				case toDoBefore = "To do before"
			}
			
			let priority: String
			let task: String
			let toDoBefore: String
		}
		
		let id: String
		let createdTime: String
		let fields: FieldsItem
		
	}
	
	let records: [RecordItem]
}
