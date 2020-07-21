//
//  ViewController.swift
//  PickerView
//
//  Created by Ary on 16/06/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    let components = ["Red","Green","Blue"]
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[row]
    }
    
    //Get selected row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print(components[row])
        
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        switch row {
        case 0:
            let attributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.red
                
            ]
            return NSAttributedString(string: components[row], attributes: attributes)
        case 1:
            let attributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.green
            ]
            return NSAttributedString(string: components[row], attributes: attributes)
        case 2:
            let attributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.blue
            ]
            return NSAttributedString(string: components[row], attributes: attributes)
        default:
            break
        }
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.darkText
        ]
        return NSAttributedString(string: components[row], attributes: attributes)
     
    }
    

}

