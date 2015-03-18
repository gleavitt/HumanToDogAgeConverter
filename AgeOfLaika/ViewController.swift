//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Geoff Leavitt on 3/6/15.
//  Copyright (c) 2015 Creative Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanAgeTextField: UITextField!
    @IBOutlet weak var dogYearsTextLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButton(sender: UIButton)
    {
        let ageFromTextField = humanAgeTextField.text.toInt()!
        dogYearsTextLabel.hidden = false
        
        let conversionConstant = ageFromTextField * 7
        
        dogYearsTextLabel.text = "You are " + "\(ageFromTextField + conversionConstant)" + " in dog years."
        
        humanAgeTextField.text = ""
        humanAgeTextField.resignFirstResponder()
    }
    
    @IBAction func ConvertRealDogYears(sender: UIButton)
    {
        let stringFromTextField = humanAgeTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsTextLabel.hidden = false
        dogYearsTextLabel.text = "\(realDogYears)" + " in REAL dog years."
        humanAgeTextField.text = ""
        humanAgeTextField.resignFirstResponder()
    }
}

