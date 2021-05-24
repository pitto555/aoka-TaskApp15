//
//  ViewController.swift
//  x
//
//  Created by aoka on 2021/05/24.
//

import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class FirstViewController: UIViewController {
    
    private var checkItems: [CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true)]
    
    private var addBarButtonItem: UIBarButtonItem!
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonTapped(_:)))
        self.navigationItem.rightBarButtonItem = addBarButtonItem
    }
    
    @objc func addBarButtonTapped(_ sender: UIBarButtonItem) {
        Router.showSeconde(flom: self)
    }
    
    @IBAction func cancel(segue: UIStoryboardSegue) {
    }
    
    @IBAction func save(segue: UIStoryboardSegue) {
        guard let secondeVC = segue.source as? SecondeViewController, let name = secondeVC.nameText else {return}
        checkItems.append(CheckItem(name: name, isChecked: false))
        tableView.reloadData()
    }
}

extension FirstViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! TableViewCell
        cell.configure(checkItem: checkItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let check = checkItems[indexPath.row].isChecked
        checkItems[indexPath.row].isChecked = !check
        self.tableView.reloadData()
    }
}
