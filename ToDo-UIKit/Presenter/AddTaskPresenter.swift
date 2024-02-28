//
//  AddTaskPresenter.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

class Presenter {
	
	let view: PresenterView?
	let apiManager: APIManager = APIManager()
	
	init(view: PresenterView) {
		self.view = view
	}
	
	func getData() {
		Task {
			do {
				let task = try await self.apiManager.fetchData(model: RecordsResponse.self)
				
				let records = task.records.map {
					DBRecord.save(record: $0)
				}
				
				Task { @MainActor in
					self.view?.getData(data: records)
				}
			} catch {
				print(error)
			}
		}
	}
	
//	MARK: - TO DO
	func postData(
		
	) {

	}
}

protocol PresenterView: AnyObject {
	
	@MainActor
	func getData(data: [DBRecord])
	
	@MainActor
	func updateList(with data: [DBRecord])
}
