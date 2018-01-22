//
//  ViewController.swift
//  custom cell-2
//
//  Created by Emily on 1/18/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class CustomCellsViewController: UITableViewController, customDelegate {
    
    
    @IBOutlet weak var totalNum: UILabel!
    

    var sum = 0
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.currentNum.text = String(describing: pow(10,indexPath.row))
        cell.delegate = self
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculate(_ sender: CustomCell, with button: UIButton) {
        if let num = Int(sender.currentNum.text!){
        if button.titleLabel?.text == "+"{
            sum += num
        } else if button.titleLabel?.text == "-" {
            sum -= num
        }
        }
        totalNum.text = "Total: \(String(sum))"
        print(totalNum)
    }
}

