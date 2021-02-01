//
//  QuestionController.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/27/21.
//

import UIKit

class QuestionController: UIViewController {
    
    @IBOutlet weak var QuestionTempLabel: UILabel!
    @IBOutlet weak var QuestionTitle: UILabel!
    @IBOutlet weak var FirstOption: UIButton!
    @IBOutlet weak var SecondOption: UIButton!
    @IBOutlet weak var ThirdOption: UIButton!
    @IBOutlet weak var FourthOption: UIButton!
    @IBOutlet weak var PrevPage: UIButton!
    @IBOutlet weak var NextPage: UIButton!
    
    var questions = [Question]()
    var temp = 0
    var pressed = false
    var counter = 0
    var history = SharedArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Questions"
        setDefault()
        counter = 0
        populate()
        showQuestion()
        // Do any additional setup after loading the view.
    }
    
    func populate() {
        questions.append(Question(question: "First Question", answer: "One", options: ["One","Two", "Three", "Four"]))
        questions.append(Question(question: "Second Question", answer: "Two", options: ["One","Two", "Three", "Four"]))
        questions.append(Question(question: "Third Question", answer: "Three", options: ["One","Two", "Three", "Four"]))
        questions.append(Question(question: "Fourth Question", answer: "Four", options: ["One","Two", "Three", "Four"]))
    }
    
    @IBAction func PrevAction(_ sender: Any) {
        if temp == 0 {
            _ = navigationController?.popViewController(animated: true)
        }
        temp-=1
        setDefault()
        showQuestion()
    }
    
    @IBAction func NextAction(_ sender: Any) {
        if temp == questions.count - 1 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ResultPage") as! ResultController
            vc.counter = counter
            vc.max = questions.count
            navigationController?.pushViewController(vc, animated: true)
        } else {
            temp+=1
            setDefault()
            showQuestion()
        
        }
    }
    
    func showQuestion() {
        QuestionTempLabel.text = "Question \(temp+1) out of \(questions.count+1)"
        let question = questions[temp]
        QuestionTitle.text = question.question
        FirstOption.setTitle(question.options[0], for: .normal)
        SecondOption.setTitle(question.options[1], for: .normal)
        ThirdOption.setTitle(question.options[2], for: .normal)
        FourthOption.setTitle(question.options[3], for: .normal)
    }
    
    
    @IBAction func PressFirstOption(_ sender: Any) {
        if !pressed {
            pressed = true
            if FirstOption.titleLabel?.text == questions[temp].answer {
                FirstOption.backgroundColor = UIColor.green
                counter+=1
            } else {
                FirstOption.backgroundColor = UIColor.red
            }
        }
    }
    
    @IBAction func PressSecondOption(_ sender: Any) {
        if !pressed {
            pressed = true
            if SecondOption.titleLabel?.text == questions[temp].answer {
                SecondOption.backgroundColor = UIColor.green
                counter+=1
            } else {
                SecondOption.backgroundColor = UIColor.red
            }
        }
    }
    
    @IBAction func PressThirdOption(_ sender: Any) {
        if !pressed {
            pressed = true
            if ThirdOption.titleLabel?.text == questions[temp].answer {
                ThirdOption.backgroundColor = UIColor.green
                counter+=1
            } else {
                ThirdOption.backgroundColor = UIColor.red
            }
        }
    }
    
    @IBAction func PressFourthOption(_ sender: Any) {
        if !pressed {
            pressed = true
            if FourthOption.titleLabel?.text == questions[temp].answer {
                FourthOption.backgroundColor = UIColor.green
                counter+=1
            } else {
                FourthOption.backgroundColor = UIColor.red
            }
        }
    }
    
    func setDefault(){
        pressed = false
        FirstOption.backgroundColor = UIColor.white
        SecondOption.backgroundColor = UIColor.white
        ThirdOption.backgroundColor = UIColor.white
        FourthOption.backgroundColor = UIColor.white
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
