//
//  BMiBrain.swift
//  BMI Calculator
//
//  Created by Qenawi on 12/2/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    var bmi:Float?
    var msg:String?
    var color:UIColor?
    init(b:Float,msg:String?,color:UIColor)
    {
        bmi = b
        self.msg = msg
        self.color = color
    }
}
struct BMIBrain {
    var bmi:BMI?
    private let minBM:Float = 18.0
    private let maxBM:Float = 25.0

    mutating func calculate(height:Float , weight:Float)
    {
        let bm:Float = weight / pow(height, 2)
        
       if bm < minBM {
        self.bmi = BMI(b: bm, msg: "you need to eat", color: UIColor.green)
        }
       else if bm < maxBM {
        self.bmi = BMI(b: bm, msg: "you are cool", color: UIColor.purple)
        
        }
       else{
          self.bmi = BMI(b: bm, msg: "you are fat", color: UIColor.black)
        }
    }
    func getBmi() -> BMI?
    {
      return bmi
    }
}
