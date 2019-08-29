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
    
    @IBOutlet weak var name_lb: UILabel!
    @IBOutlet weak var matricula_lb: UILabel!
    @IBOutlet weak var cpf_lb: UILabel!
    @IBOutlet weak var tabbar: UITabBarItem!
    
    var qrData: QRData?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseQRData()
    }
    
    func parseQRData() {
        var name, matricula, cpf: String?
        let content = qrData?.codeString

        if let data = content?.data(using: .utf8) {
            if let content = try? JSON(data: data) {
                name = content["nome"].string
                matricula = content["matricula"].string
                cpf = content["cpf"].string
            }
        }
        
        name_lb.text = name
        matricula_lb.text = matricula
        cpf_lb.text = cpf
    }
}
