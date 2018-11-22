//
//  AnswerViewController.swift
//  prism-ios
//
//  Created by GooJinSun on 22/11/2018.
//  Copyright © 2018 GooJinSun. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var answerTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
