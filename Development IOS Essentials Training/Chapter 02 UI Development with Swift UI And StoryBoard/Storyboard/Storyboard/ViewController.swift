//
//  ViewController.swift
//  Storyboard
//
//  Created by Muhammad Huzaifa Khan on 12/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //textField.becomeFirstResponder()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textField.becomeFirstResponder()
    }

    @IBAction func buttonWasrPressed(_ sender: Any) {
//        label1.text = "Hi,"
        let name = textField.text ?? ""
        label1.text = "Hello, \(name)"
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        textField.resignFirstResponder()
    }
}

