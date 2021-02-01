//
//  HistoryController.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/31/21.
//

import UIKit


class HistoryController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        print("History")
        for el in SharedArray.array {
            print(el.percent)
        }
        // Do any additional setup after loading the view.
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

extension HistoryController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
}

extension HistoryController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count \(SharedArray.array.count)")
        return SharedArray.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        print(indexPath.row)
        cell.title?.text = "Attempt \(indexPath.row+1)"
        cell.result?.text = "\(SharedArray.array[indexPath.row].count) / \(SharedArray.array[indexPath.row].max)"
        return cell
    }
    
}
