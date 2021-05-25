//
//  Router.swift
//  aoka-TaskApp15
//
//  Created by aoka on 2021/05/24.
//

import UIKit

class Router {
    
    static func showRooter(window:UIWindow) -> UIWindow {
        let  firstVC = UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        window.rootViewController = UINavigationController(rootViewController: firstVC)
        window.makeKeyAndVisible()
        return window
    }
    
    static func showSecond(from: UIViewController, actionHandler: @escaping (SecondViewController.Action) -> Void) {
        let secondVC = UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
        secondVC.setup(actionHandler: actionHandler)
        let secondeWindow = UINavigationController(rootViewController: secondVC)
        from.present(secondeWindow, animated: true, completion: nil)
    }
}
