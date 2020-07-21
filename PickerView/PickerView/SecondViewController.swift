//
//  SecondViewController.swift
//  PickerView
//
//  Created by Ary on 17/06/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let label = UILabel(frame: CGRect(x: 170, y: 250, width: 100, height: 21))
    let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: 375, height: 216))
    let listComponents = [["1","2","3","4","5"],["A","E","I","O","U"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = listComponents[0][pickerView.selectedRow(inComponent: 0)] +
            listComponents[1][pickerView.selectedRow(inComponent: 1)]
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.showsSelectionIndicator = true
        view.addSubview(pickerView)
        view.addSubview(label)

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return listComponents.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listComponents[component].count
    }
 
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listComponents[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
      label.text!.replace(at: component, by: Character(listComponents[component][row]))
      
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        
        return 40
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let pickerLabel = UILabel()
        pickerLabel.textColor = .darkText
        pickerLabel.text = listComponents[component][row]
        pickerLabel.font = UIFont(name: "Arial-BoldMT", size: 10)
        pickerLabel.textAlignment = NSTextAlignment.left
        return pickerLabel
    
    }
}

extension String{
    
    mutating func replace(at position:Int, by element:Character)
    {
        let index = self.index(self.startIndex,offsetBy:position)
        self.remove(at: index)
        self.insert(element,at:index)
    }
}
