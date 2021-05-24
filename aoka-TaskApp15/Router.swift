//
//  Router.swift
//  aoka-TaskApp15
//
//  Created by aoka on 2021/05/24.
//

import UIKit

class Router {
    
    static func showRooter(window:UIWindow) -> UIWindow {
        let  FirstVC = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        window.rootViewController = UINavigationController(rootViewController: FirstVC)
        window.makeKeyAndVisible()
        return window
    }
    
    static  func showSeconde(flom: UIViewController) {
        let secondeVC = UIStoryboard.init(name: "Seconde", bundle: nil).instantiateInitialViewController() as! SecondeViewController
        let secondeWindow = UINavigationController(rootViewController: secondeVC)
        flom.present(secondeWindow, animated: true, completion: nil)
    }
}
