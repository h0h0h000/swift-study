//
//  ViewController.swift
//  HelloWorld
//
//  Created by 경호's mac on 2022/04/01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        //"Hello" 라는 문자열과 txtName.text 문자열을 결합하여 lblHello.txt에 넣음
        lblHello.text = "Hello" + txtName.text!
    }
    
}

