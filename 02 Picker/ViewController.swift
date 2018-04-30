//
//  ViewController.swift
//  02 Picker
//
//  Created by 김종현 on 2018. 4. 23..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var color = ["흰색", "초록색", "노란색"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch String(row) {
        case "1":
            view.backgroundColor = UIColor.green
        case "2":
            view.backgroundColor = UIColor.yellow
        default:
            view.backgroundColor = UIColor.white
        }
    }
    

    @IBOutlet weak var myPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }

}

