//
//  DaysPickerViewController.swift
//  PickerView
//
//  Created by Ary on 17/06/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class DaysPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
   
    let label = UILabel(frame: CGRect(x: 0, y: 380, width: 375, height: 21))
    let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: 375, height: 216))
    let daysOfWeek = ["Domingo",
                      "Segunda-Feira",
                      "Terça-Feira",
                      "Quarta-Feira",
                      "Quinta-Feira",
                      "Sexta-Feira",
                      "Sábado"]
    override func viewDidLoad() {
        super.viewDidLoad()
        label.textAlignment = .center
        pickerView.delegate = self
        pickerView.dataSource = self
        view.addSubview(pickerView)
        view.addSubview(label)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        return daysOfWeek.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return daysOfWeek[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        label.text = daysOfWeek[row]
        
    }

}
