//
//  Task.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

// MARK: - Task
struct Task: Codable {
	let id: String
	let createdTime: String
	let fields: Fields
}

class TaskService {
	func getTask(completion: @escaping ([Task]) -> ()) {
		guard let url = URL(string: "https://api.airtable.com/v0/appBKESmvQVVZpVVP/To%20do?maxRecords=3&view=Grid%20view")
		else {
			fatalError("Le serveur est indisponible ou l'url est invalide")
		}
		var request = URLRequest(url: url)
		request.httpMethod = "GET"
		request.setValue("Bearer patNS5n7mKVhJFySS.57d7e125d0d9785c6c66012329899c81b8d40bc8bec12c8a63a70a058dfeffe9", forHTTPHeaderField: "Authorization")
		
		URLSession.shared.dataTask(with: request) { (data, response, error) in
			guard let data = data, error == nil else {
				DispatchQueue.main.async {
					fatalError("No data response")
				}
				return
			}
			do {
				let record = try JSONDecoder().decode(Record.self, from: data)
				DispatchQueue.main.async {
					completion(record.records)
				}
			} catch {
				print("Success get item: \(error)")
			}
		}.resume()
	}
}
