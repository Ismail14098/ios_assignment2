//
//  ResultController.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/27/21.
//

import UIKit

protocol ArrayDelegate {
   func passData(data:[Result])
}

class ResultController: UIViewController {
    
    @IBOutlet weak var ResultLabel: UILabel!
    var counter: Int?
    var max: Int?
    var percentRes = 0.0
    
    var delegate: ArrayDelegate?

    override func viewDidLoad() {
        guard let c = counter else { return }
        guard let m = max else { return }
        percentRes = Double(c)/Double(m) * 100
        let text = "Result: \(percentRes) %"
        ResultLabel.text = text
        let res = Result(percent: percentRes, count: counter!, max: max!)
        SharedArray.array.append(res)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func PressTryAgain(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        navigationController?.popViewController(animated: false)
        let vc = storyboard?.instantiateViewController(withIdentifier: "Questions") as! QuestionController
        navigationController?.pushViewController(vc, animated: false)
    }
    @IBAction func PressHomePage(_ sender: Any) {
//        for controller in self.navigationController!.viewControllers as Array {
//            if controller.isKind(of: ViewController.self) {
//                let vc = controller as! ViewController
//                vc.history = history
//                _ =  self.navigationController!.popToViewController(vc, animated: true)
//                break
//            }
//        }
        
        _ =  self.navigationController!.popToRootViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "HomePage" {
//            if let navController = segue.destination as? UINavigationController {
//                if let chidVC = navController.topViewController as? ViewController {
//                             //TODO: access here chid VC  like childVC.yourTableViewArray = localArrayValue
//                    chidVC.history = history
//                }
//            }
//        }
//        let navVC = segue.destination as! ViewController
//        navVC.history = history
}
