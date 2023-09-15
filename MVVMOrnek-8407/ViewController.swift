//
//  ViewController.swift
//  MVVMOrnek-8407
//
//  Created by Opendart Yazılım ve Bilişim Hizmetleri on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var modelView : ViewModel?
    
    @IBOutlet weak var lblNickName: UILabel!
    
    @IBAction func btnSubmitAction(_ sender: Any) {
        
        modelView = ViewModel(name: "ibrahim", pass: "1234", mail: "ibr@ibr.com") // modelView daki değişkenlerin değerlerini okumaya çalışıyoruz. burada ViewModel in constructor ına ibrahim şifre ve mail adresini gönderdik. ViewModel in constructor ı da gidip Model class ından constructor ına değerleri gönderir. Model class ının constructorına da bu değerler girilecektir. yani aradaki ViewModel verileri taşımaktan sorumludur. modeldeki verileri alıp view e taşır view de bir aksiyon olduğu zaman da bunu modele taşır. yani benim işim ana katmanda view controller ın içinde olucak. dolayısıyla view ımın da modelimin de ayrı ayrı test işlemlerini yapabilirim. yani bütün logic im benim ViewModel a taşındı
        
        lblNickName.text = modelView?.nickName // modeldeki değişkenin değerini alıp label da yazıyoruz
        modelView?.submit() // submit fonksiyonu gidip modeldeki saveSurver fonksiyonunu çağırır. yani arada bütün işlemleri yapan modelview dır. modelview hem modelin yaptığı işlerden haberdar hem de view daki aksiyonlardan haberdar. viewmodel butona tıklandığında tüm tıklama olaylarıyla beraber modele bir event gönderir ve modelden gelen dataları da view da gösteriyor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

