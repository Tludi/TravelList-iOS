//
//  NewTripViewController.swift
//  TravelList
//
//  Created by manatee on 7/22/15.
//  Copyright (c) 2015 diligentagility. All rights reserved.
//

import UIKit

class NewTripViewController: UIViewController {

  @IBOutlet weak var tripNameField: UITextField!
  @IBOutlet weak var dateTextField: UITextField!
  @IBOutlet weak var nightsCount: UILabel!
  @IBOutlet weak var slider: UISlider!
  
  @IBAction func dateTextFieldEditing(sender: UITextField) {

    var datePickerView:UIDatePicker = UIDatePicker()
    
    datePickerView.datePickerMode = UIDatePickerMode.Date
    
    sender.inputView = datePickerView
    
    datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
  }
  
  @IBAction func nightsSlider(sender: UISlider) {
    var nights = Int(sender.value)
    
    nightsCount.text = "\(nights)"
  }
  
  @IBAction func addTripButton(sender: UIButton) {
    println("pressed added trip")
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        var nights = Int(slider.value)
        nightsCount.text = "\(nights)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  func datePickerValueChanged(sender:UIDatePicker) {
    var dateFormatter = NSDateFormatter()
    
    dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
    dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
    dateTextField.text = dateFormatter.stringFromDate(sender.date)
  }

}
