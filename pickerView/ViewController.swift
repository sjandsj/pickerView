//
//  ViewController.swift
//  pickerView
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var soulLabel: UILabel!
    @IBOutlet weak var pikerView: UIPickerView!
   
    var array = [["name":"Subhanshu", "location":"Jablapur"], ["name":"Ritwik", "location":"Sagar"], ["name":"Akshat", "location":"Dewas"], ["name":"aman", "location":"Bhopal"], ["name":"Ayush", "location":"Bhopal"], ["name":"Khatloyiya", "location":"Jablapur"], ["name":"Puneet", "location":"Nagda"], ["name":"Shubham", "location":"Gwalior"],   ["name":"Prannet", "location":"Jablapur"], ["name":"Srajan", "location":"Jablapur"], ["name":"Sansa", "location":"Winterfell"], ["name":"Gendry", "location":"Kings Landing"], ["name":"Tyrion Lannister", "location":"Castely Rock"], ["name":"Walder Frey", "location":"Riverrun"]]
    var throughDataModels = [dataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendingToDataModel()
        print(throughDataModels)
    }
    
    func appendingToDataModel() {
        for i in 0...(array.count-1) {
            var dict = array[i]
           self.throughDataModels.append(dataModel(yourName: dict["name"]!, yourCity: dict["location"]!))
        }
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return throughDataModels.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let model:dataModel = throughDataModels[row]
        return model.name
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let model:dataModel = throughDataModels[row]
        soulLabel.text = model.city
    }
}

