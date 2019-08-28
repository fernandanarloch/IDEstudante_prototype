//
//  DetailViewController.swift
//  ID_estudante
//
//  Created by Lab SEC on 19/08/19.
//  Copyright © 2019 LabSEC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var name_lb: UILabel!
    @IBOutlet weak var tabbar: UITabBarItem!
    
    var qrData: QRData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name_lb.text = qrData?.codeString
    }
}
