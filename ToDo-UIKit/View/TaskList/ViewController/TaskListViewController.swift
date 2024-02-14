//
//  TaskListViewController.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import UIKit

class TaskListViewController: UIViewController, PresenterView {
	
	var tasks: [Task] = []
	
	func getData(data: [Task]) {
		self.tasks = data
		self.tableView.reloadData()
	}
	
	func updateList(with data: [Task]) {
		self.tableView.reloadData()
	}
	
	
	@IBOutlet weak var tableView: UITableView!
	
	lazy var presenter = Presenter(view: self)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		presenter.getData()
		self.tableView.reloadData()
	}
}
