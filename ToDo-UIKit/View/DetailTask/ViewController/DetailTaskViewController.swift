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
	
	var task: DBRecord!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		taskTitle.text = task.r_fields?.a_task
		// Do any additional setup after loading the view.
	}
}
