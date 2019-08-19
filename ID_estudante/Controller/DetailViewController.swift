//
//  DetailViewController.swift
//  ID_estudante
//
//  Created by Lab SEC on 19/08/19.
//  Copyright © 2019 LabSEC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detail_lb: UILabel!
    
    var qrData: QRData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detail_lb.text = qrData?.codeString
    }
}
