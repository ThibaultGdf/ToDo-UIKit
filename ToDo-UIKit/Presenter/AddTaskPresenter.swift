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
	
	@objc func getData() async throws {
		do {
			let task = try await self.apiManager.fetchData(model: [Record].self, path: "/To%20do")
			self.view?.getData(data: task)
		} catch {
			throw error
		}
	}
}

protocol PresenterView: AnyObject {
	func getData(data:[Record])
	func updateList(with data: [Record])
}
