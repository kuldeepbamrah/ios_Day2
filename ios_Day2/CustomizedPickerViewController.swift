//
//  CustomizedPickerViewController.swift
//  ios_Day2
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomizedPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    
    let statesDictionary = ["India":["Maharashtra","Punjab","Kerela"],"Canada":["Ontario","British Columbia"],"USA" : ["Arizona","New York","Texas","yooy"]]
    @IBOutlet weak var CustomizedPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CustomizedPicker.dataSource = self
        self.CustomizedPicker.delegate = self

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return self.statesDictionary.keys.count
        }
        if component == 1
        {
            
            
        }
        
        return 0
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
