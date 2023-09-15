//
//  ViewModel.swift
//  MVVMOrnek-8407
//
//  Created by Opendart Yazılım ve Bilişim Hizmetleri on 19.03.2023.
//

import Foundation

class ViewModel : NSObject {
    private var model : Model?
    
    init(name: String, pass : String, mail :String)
    {
        self.model = Model(nickName: name, password: pass, mail: mail)
    }
    
    //getter setter
    //ilgili değişkenin sadece okunabilir olmasını sağlamak istediğmizde
    //encapsulation koda yetkisiz erişimi engeller
    
    var nickName : String {
        get { // bu değişkenin sadece okunabilir olması için get yazılır
            return model!.nickName ?? "" // modelin içindeki nickName değişkenine değerini ver ya da boş. burada yapmış olduğumuz işlemde şunu söyledik : ViewModel class ı içindeki Nickname değişkeninin sadece okunabilir halini kullanabilirsin yani bir değer atayamazsın. bu değişkenin atanabilir olması için bu sefer bunun set fonksiyonunu yazmak gerekir. bu sonra gösterilcek
        }
      
    }
    
    var pass : String {
        get{
            return model!.password ?? ""
        }
    }
    
    var mail : String {
        get {
            return model!.mail ?? ""
        }
    }
    
    
    func submit()
    {
        model?.saveServer()
    }
    
}
