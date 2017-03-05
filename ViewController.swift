//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jason Shepherd on 3/2/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    
    let states = ["Alaska","Arkansa","Alabama","Michigan","California","Newyork","Texas"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        
       
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        

    }
    
    
    
    
    
    
}

