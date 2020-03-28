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
	var homeCellTitle: [String] = []

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return homeCellTitle.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell: JHTableViewCell
		let row = indexPath.row
		cell = (tableView.dequeueReusableCell(withIdentifier: "JHCell") as? JHTableViewCell)!
		cell.title.text = homeCellTitle[row]
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: false)
//		let storyBoard: UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
//		let editViewController: EditViewController = (storyBoard.instantiateViewController(withIdentifier: "Edit") as? EditViewController)!
//		self.navigationController?.pushViewController(editViewController, animated: true)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
		tableView.delegate = self
	}

	@IBAction func addMemo(_ sender: Any) {
		let storyBoard: UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
		let editViewController: EditViewController = (storyBoard.instantiateViewController(withIdentifier: "Edit") as? EditViewController)!
		self.navigationController?.pushViewController(editViewController, animated: true)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//		if segue.destination is EditViewController
//		{
//			let vc = segue.destination as? EditViewController
//			// TODO: - 넘겨줄 데이터 작업
//		}
	}
}

