//
//  ViewController.swift
//  CustomNavigationAnimation
//
//  Created by Malek on 10/3/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMenu(_ sender: Any) {
        let menuViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MenuViewController")
        menuViewController.modalPresentationStyle = .fullScreen
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = .push
        transition.subtype = .fromBottom
        view.window?.layer.add(transition, forKey: kCATransition)
        present(menuViewController, animated: false, completion: nil)
    }
}
