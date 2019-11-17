//
//  ViewController.swift
//  CoreDataBase
//
//  Created by jabeed on 06/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

extension UITextField {
    func setUnderLine() {
        let border = CALayer()
        let width = CGFloat(4)
        border.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtName.setUnderLine()
        txtMobile.setUnderLine()
        txtCity.setUnderLine()
        txtAddress.setUnderLine()
        
    }

    
    @IBAction func btnSaveClick(_ sender: Any) {
        
        let dict = ["name":txtName.text,"address":txtAddress.text,"city":txtCity.text,"mobile":txtMobile.text]
        DatabaseHelper.shareInstance.save(object: dict as! [String : String])
        
        
    }
    

}

