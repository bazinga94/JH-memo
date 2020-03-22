//
//  ViewController.swift
//  JH-memo
//
//  Created by Jongho Lee on 2020/03/17.
//  Copyright © 2020 Jongho Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!

	var sampleCellTitle = ["JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH", "JH"]

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return sampleCellTitle.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell: JHTableViewCell
		let row = indexPath.row
		cell = (tableView.dequeueReusableCell(withIdentifier: "JHCell") as? JHTableViewCell)!
		cell.title.text = sampleCellTitle[row]
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: false)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
		tableView.delegate = self
		// Do any additional setup after loading the view.
	}


}

