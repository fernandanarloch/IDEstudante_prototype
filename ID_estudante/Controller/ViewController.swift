//
//  ViewController.swift
//  ID_estudante
//
//  Created by Lab SEC on 16/08/19.
//  Copyright © 2019 LabSEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var camera_btn: UIButton!
    @IBOutlet weak var explanation_lb: UILabel!
    @IBOutlet weak var scroll_view: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        explanation_lb.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func openCamera(_ sender: UIButton) {
        // TO DO
    }
    
}
