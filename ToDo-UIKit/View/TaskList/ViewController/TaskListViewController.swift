//
//  TaskListViewController.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import UIKit

class TaskListViewController: UIViewController, PresenterView, UITableViewDelegate, UITableViewDataSource {

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let storyboard = UIStoryboard(name: "DetailTaskView", bundle: nil)
		guard let vc = storyboard.instantiateViewController(identifier: "DetailTaskViewController") as? DetailTaskViewController else { return }
		
		vc.task = tasks[indexPath.row]
		self.navigationController?.pushViewController(vc, animated: true)

	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tasks.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let customCell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
		customCell.taskLabel.text = tasks[indexPath.row].fields.task
		return customCell
	}
	
	var tasks: [Record] = []
	
	func getData(data: [Record]) {
		self.tasks = data
		self.tableView.reloadData()
	}
	
	func updateList(with data: [Record]) {
		self.tableView.reloadData()
	}
	
	
	@IBOutlet private weak var tableView: UITableView!
	
	lazy var presenter = Presenter(view: self)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.tableView.dataSource = self
		self.tableView.delegate = self
		// Do any additional setup after loading the view.
//		presenter.getData()
		self.tableView.reloadData()
	}
}
