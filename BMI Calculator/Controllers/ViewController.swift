//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var brain = BMIBrain()
    @IBAction func caculateBtnOnClick(_ sender: UIButton)
    {
        brain.calculate(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "showDetails", sender: self)
    }
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBAction func onHeightChange(_ sender: UISlider)
    {
        heightText.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func onWeightSliderChange(_ sender: UISlider) {
        weightText.text = "\(String(format: "%.2f", sender.value))kg"

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        heightText.text = "\(String(format: "%.2f", heightSlider.value))m"
        weightText.text = "\(String(format:"%.2f",weightSlider.value))kg"

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showDetails"{
            let vc = segue.destination as! ViewControllerDetails
            vc.bmi = brain.getBmi()
            
        }
    }

}

