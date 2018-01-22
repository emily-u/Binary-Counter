//
//  CustomCell.swift
//  custom cell-2
//
//  Created by Emily on 1/18/18.
//  Copyright © 2018 Emily. All rights reserved.
//


import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var currentNum: UILabel!
    
    var delegate: customDelegate?
    
    @IBAction func calculate(_ sender: UIButton) {
        delegate?.calculate(self, with:sender)
    }
    
    
    
}
