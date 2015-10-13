//
//  LoginViewController.swift
//  weixin
//
//  Created by Ian on 15/10/12.
//  Copyright © 2015年 AppCode. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var serverTF: UITextField!
    @IBOutlet weak var pswTF: UITextField!
    @IBOutlet weak var userTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as! NSObject == self.doneButton {
            NSUserDefaults.standardUserDefaults().setObject(userTF.text, forKey: "weixinID")
            NSUserDefaults.standardUserDefaults().setObject(pswTF.text   , forKey: "weixinPwd")
            NSUserDefaults.standardUserDefaults().setObject(userTF.text, forKey: "wxserver")
        }
        
        
    }


}
