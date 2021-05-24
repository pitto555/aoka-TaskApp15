//
//  SecondeViewController.swift
//  aoka-TaskApp15
//
//  Created by aoka on 2021/05/24.
//

import UIKit

class SecondeViewController: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    private(set) var nameText: String?

    @IBAction func saveButtonAction(_ sender: Any) {
        nameText = nameTextField.text
        performSegue(withIdentifier: "saveSegue", sender: nil)
    }
}
