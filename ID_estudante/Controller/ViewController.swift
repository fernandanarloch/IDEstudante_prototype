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
    @IBOutlet weak var scroll_view: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
