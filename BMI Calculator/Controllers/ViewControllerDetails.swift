//
//  ViewControllerDetails.swift
//  BMI Calculator
//
//  Created by Qenawi on 12/2/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
class ViewControllerDetails: UIViewController {
    @IBOutlet weak var msg: UILabel!
    var bmi:BMI? = nil
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var imageViewBg: UIImageView!
    @IBAction func recalculate(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if bmi != nil {
            resultLabel.text = String(format: "%.2f", bmi?.bmi ?? 0.0)
            imageViewBg.backgroundColor = bmi?.color ?? UIColor.gray
            msg.text = bmi?.msg ?? ""
        }
    }
    
}
