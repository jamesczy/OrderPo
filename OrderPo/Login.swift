//
//  Login.swift
//  OrderPo
//
//  Created by yingyi on 16/1/11.
//  Copyright © 2016年 yingyi. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var UserText: UITextField!
    @IBOutlet weak var PswText: UITextField!
    
    override func viewDidLoad() {
        PswText.secureTextEntry = true
        
    }
    @IBAction func LoginClick() {
        if(UserText.text == "sa" && PswText.text == "12345")
        {
            print("登陆成功")
            let sb = UIStoryboard(name: "Main", bundle: nil);
            let infoViewController:ViewController = sb.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
            self.presentViewController(infoViewController, animated: true, completion: nil )
            
        }else{
            print("请输入正确的账号和密码")
        }
        
    }
    @IBAction func Cancel() {
        UserText.text = ""
        PswText.text = ""
    }
}
