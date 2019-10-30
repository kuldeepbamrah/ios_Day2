//
//  ViewController.swift
//  ios_Day2
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource
{
   
    
   
    
    
    @IBOutlet weak var pickerCountries: UIPickerView!
    

  
    @IBOutlet weak var output1: UILabel!
    
    @IBOutlet weak var output2: UILabel!
    
    @IBOutlet weak var pickerCurrency: UIPickerView!
    var countries = ["India","Canada","USA","China","Russia","Sri Lanka","Pakistan"]
    var currency = ["Rupee","Canadian Dollar","US Dollars","Yen","rus"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerCountries.delegate = self
        self.pickerCountries.dataSource = self
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == 0
        {
        return self.countries.count
        }
        else
        if component == 1
        {
            return self.currency.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0
        {
        return self.countries[row]
        }else
        if component == 1
        {
            return self.currency[row]
        }
        return ""
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print(self.countries[row])
        
        if component == 0
        {
            output1.text = self.countries[row]
            
        }
        if component == 1
        {
            output2.text = self.currency[row]
        }
        
        //output2.text = self.currency[row]
    }
    }

