//
//  SecondViewController.swift
//  aoka-TaskApp15
//
//  Created by aoka on 2021/05/24.
//

import UIKit

class SecondViewController: UIViewController {

    enum Action {
        case save(String)
        case cancel
    }

    private var actionHandler: (Action) -> Void = { _ in }

    @IBOutlet private weak var nameTextField: UITextField!
    private(set) var nameText: String?

    func setup(actionHandler: @escaping (Action) -> Void) {
        self.actionHandler = actionHandler
    }

    @IBAction func saveButtonAction(_ sender: Any) {
        actionHandler(.save(nameTextField.text ?? ""))
    }

    @IBAction func cancelButtonAction(_ sender: Any) {
        actionHandler(.cancel)
    }
}
