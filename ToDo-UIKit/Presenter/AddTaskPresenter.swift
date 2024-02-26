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
				let task = try await self.apiManager.fetchData(model: Records.self)
				Task { @MainActor in
					self.view?.getData(data: task)
				}
			} catch {
				fatalError("\(error)")
			}
		}
	}
}

protocol PresenterView: AnyObject {
	
	@MainActor
	func getData(data: Records)
	
	@MainActor
	func updateList(with data: [Record])
}
