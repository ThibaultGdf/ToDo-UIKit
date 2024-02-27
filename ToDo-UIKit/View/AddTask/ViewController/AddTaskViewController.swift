//
//  AddTaskViewController.swift
//  ToDo-UIKit
//
//  Created by Thibault GODEFROY on 13/02/2024.
//

import UIKit

class AddTaskViewController: UIViewController {
	
	@objc func saveButtonTapped() {
		
		dismiss(animated: true, completion: nil)
	}
	
	@objc func dismissButtonTapped() {
		dismiss(animated: true, completion: nil)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		let dismissButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissButtonTapped))
		navigationItem.leftBarButtonItem = dismissButton
		let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButtonTapped))
		navigationItem.rightBarButtonItem = saveButton
	}
}

