//
//  UIViewController+Extensions.swift
//  MySwiftExtensions
//
//  Created by Oksana Poliakova on 12.06.2022.
//


import UIKit

// MARK: - Extension for UIViewController to adding and presenting UIAlertController
extension UIViewController {
    
    func showAlertWithTitle(title: String?, message: String? = nil, viewController: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        viewController.present(alert, animated: true)
    }
    
    var sceneDelegate: SceneDelegate? {
        for scene in UIApplication.shared.connectedScenes {
            return scene.delegate as? SceneDelegate
        }
        return nil
    }
}
