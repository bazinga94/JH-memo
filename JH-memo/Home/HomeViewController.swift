//
//  HomeViewController.swift
//  JH-memo
//
//  Created by Jongho Lee on 2020/03/17.
//  Copyright © 2020 Jongho Lee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
	var delegate: SendDataDelegate?
	var rowString: String?

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
		let storyBoard: UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
		let editViewController: EditViewController = (storyBoard.instantiateViewController(withIdentifier: "Edit") as? EditViewController)!
		self.navigationController?.pushViewController(editViewController, animated: true)
		self.rowString = String(indexPath.row)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
		tableView.delegate = self
		// Do any additional setup after loading the view.
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	}
}

