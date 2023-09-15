//
//  Model.swift
//  MVVMOrnek-8407
//
//  Created by Opendart Yazılım ve Bilişim Hizmetleri on 19.03.2023.
//

import Foundation

class Model : NSObject {
    
    var nickName : String?
    var password : String?
    var mail : String?
    
    init(nickName : String, password : String, mail: String)
    {
        self.nickName = nickName
        self.password = password
        self.mail = mail
    }
    
    func saveServer()
    {
        print("veriler server a kaydedildi")
        
    }
    
    
}
