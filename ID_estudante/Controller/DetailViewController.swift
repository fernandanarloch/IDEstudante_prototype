//
//  DetailViewController.swift
//  ID_estudante
//
//  Created by Lab SEC on 19/08/19.
//  Copyright © 2019 LabSEC. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON

class DetailViewController: UIViewController {
    
    
    var qrData: QRData?
    var infos = [Information]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let parser = Parser()
        
        infos = parser.parseQRData(qrData: qrData)
        
        let table_contoller = InfoTableViewController()
        table_contoller.loadInformation(infos: infos)
    }
}


