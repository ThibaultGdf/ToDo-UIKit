//
//  AddTaskPresenter.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import Foundation

class Presenter {
	
	let view: PresenterView?
	let taskService: TaskService = TaskService()
	
	init(view: PresenterView) {
		self.view = view
	}
	
	@objc func getData() {
		let tasks = self.taskService.getTask()
		view?.getData(data: tasks)
	}
}

protocol PresenterView: AnyObject {
	func getData(data:[Task])
	func updateList(with data: [Task])
}
