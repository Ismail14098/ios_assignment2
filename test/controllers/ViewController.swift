//
//  ViewController.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var history = SharedArray()

    override func viewDidLoad() {
        
//        SharedArray.array.append(Result(percent: 50.0, count: 2, max: 4))
        super.viewDidLoad()
    title = "Test Center"
        print("Hello")
        // Do any additional setup after loading the view.
    }
    
    func showHistory(){
        for el in SharedArray.array {
            print(el.percent)
        }
    }

    @IBAction func PressStart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Questions") as! QuestionController
        vc.history = self.history
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func PressHistory(_ sender: Any) {
        showHistory()
        let vc = storyboard?.instantiateViewController(withIdentifier: "HistoryPage") as! HistoryController
        navigationController?.pushViewController(vc, animated: true)
    }
}

