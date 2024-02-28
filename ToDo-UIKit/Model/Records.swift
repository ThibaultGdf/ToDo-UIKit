//
//  Record.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Records
//struct Records: Codable {
//	let records: [Record]
//}


extension DBRecord {
	
	static func save(record: RecordsResponse.RecordItem) -> DBRecord {
		let dbRecord = DBRecord(context: PersistenceController.shared.container.viewContext)
		dbRecord.a_id = record.id
		
		return dbRecord
	}
}
