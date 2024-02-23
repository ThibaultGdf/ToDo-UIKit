//
//  DetailTaskViewController.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import UIKit

class DetailTaskViewController: UIViewController {
	
	@IBOutlet weak var datePicker: UIDatePicker!
	@IBOutlet weak var taskTitle: UILabel!
	
	var task: Record!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		taskTitle.text = task.fields.task
		// Do any additional setup after loading the view.
	}
}
