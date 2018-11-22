//
//  ViewController.swift
//  prism-ios
//
//  Created by GooJinSun on 22/11/2018.
//  Copyright © 2018 GooJinSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var questions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questions = ["질문1", "질문2", "질문3", "질문4", "질문5"]
        
        print("hey")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("hi")
        print(questions.count)
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        let question = questions[indexPath.row]

        cell.questionLabel.text = question
        print(cell.questionLabel.text)
        return cell
    }


}

