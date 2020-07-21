//
//  CounterViewController.swift
//  PickerView
//
//  Created by Ary on 17/06/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var hoursLabel = UILabel()
    let pickerView = UIPickerView(frame: CGRect(x: 0, y: 150, width: 375, height: 216))
    var dataSource = [["0"],["0"],["0"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        initDataSource()
        placeLabels()
        pickerView.dataSource = self
        pickerView.delegate = self
        view.addSubview(pickerView)
    }
    

    func initDataSource()
    {
        for i in 1..<24
        {
            dataSource[0].append(i.description)
        }
        
        for i in 1..<60
        {
            dataSource[1].append(i.description)
        }
        
        for i in 1..<60
        {
            dataSource[2].append(i.description)
        }
    }

    func placeLabels()
    {
       
        hoursLabel.text = "hora"
        hoursLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        hoursLabel.sizeToFit()
        hoursLabel.frame.origin.x = pickerView.frame.width * 0.27 //100.0
        hoursLabel.frame.origin.y = pickerView.frame.height * 0.5 - (hoursLabel.frame.height / 2.0)
        print(hoursLabel.frame.width)
        let minLabel = UILabel()
        minLabel.text = "min"
        minLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        minLabel.sizeToFit()
        minLabel.frame.origin.x = pickerView.frame.width * 0.55//200.0
        minLabel.frame.origin.y = pickerView.frame.height * 0.5 - (minLabel.frame.height / 2.0)
        print(minLabel.frame.width)
        let secLabel = UILabel()
        secLabel.text = "seg"
        secLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        secLabel.sizeToFit()
        secLabel.frame.origin.x = pickerView.frame.width * 0.83//300.0
        secLabel.frame.origin.y = pickerView.frame.height * 0.5 - (secLabel.frame.height / 2.0)
        print(secLabel.frame.width)
        print(pickerView.frame.width)
        pickerView.addSubview(secLabel)
        pickerView.addSubview(hoursLabel)
        pickerView.addSubview(minLabel)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return dataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return dataSource[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return dataSource[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        
        
        return 100.0
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0
        {
            if dataSource[component][row] != "1"
            {
                hoursLabel.text = "horas"
            }else{
                hoursLabel.text = "hora"
            }
        }
        hoursLabel.sizeToFit()
    }
}
