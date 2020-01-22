//
//  Parser.swift
//  ID_estudante
//
//  Created by Lab SEC on 17/12/19.
//  Copyright © 2019 LabSEC. All rights reserved.
//

import Foundation
import SwiftyJSON

class Parser {
    
    let titles = ["nome", "ie", "matricula"]
    
    func parseQRData(qrData: QRData?) -> Array<Information> {
        var infos = [Information]()
        let content = qrData?.codeString
        
        if let data = content?.data(using: .utf8) {
            if let content = try? JSON(data: data) {
                for title in titles {
                    let information = Information(title: title, description: content[title].string)
                    infos += [information]
                }
            }
        }
        return infos
    }
}

//class Parser {
//
//    let infos = ["nome", "ie", "matricula"]
//
//    func parseQRData(qrData: QRData?) -> Dictionary<String, String?> {
//        var return_infos = [String: String?]()
//        let content = qrData?.codeString
//
//        if let data = content?.data(using: .utf8) {
//            if let content = try? JSON(data: data) {
//                for info in infos {
//                    return_infos[info] = (content[info].string)
//                }
//            }
//        }
//        return return_infos
//    }
//}
