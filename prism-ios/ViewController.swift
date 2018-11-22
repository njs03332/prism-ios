//
//  ViewController.swift
//  prism-ios
//
//  Created by GooJinSun on 22/11/2018.
//  Copyright © 2018 GooJinSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var questionBottomLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var questions = [String]()
    var question = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionBottomLabel.isHidden = true
        answerButton.isHidden = true
        questions = ["오늘 하루는 어땠어요?", "가장 좋아하는 색깔", "지금 갑자기 하고 싶은 것", "지루함", "하고 싶지만 하지 못한 말은?"]
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        let question = questions[indexPath.row]

        cell.questionLabel.text = question
        return cell
    }
    
    //this function is called when specific row is selected!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        question = questions[tableView.indexPathForSelectedRow!.row]
        questionBottomLabel.text = question
        answerButton.isHidden = false
        questionBottomLabel.isHidden = false
        
    }
    
    @IBAction func clickAnswerButton(_ sender: Any) {
        answerButton.isHidden = true
        questionBottomLabel.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            (segue.destination as! AnswerViewController).question = question
        }
    }
    
    

    
}

