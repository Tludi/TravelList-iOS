//
//  ViewController.swift
//  TravelList
//
//  Created by manatee on 7/18/15.
//  Copyright (c) 2015 diligentagility. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

  let realm = Realm()
  
  @IBOutlet weak var TripLabel: UILabel!
  @IBOutlet weak var TripField: UITextField!
  @IBOutlet weak var tripCount: UILabel!
  
  @IBOutlet weak var ListField: UITextField!
  
  
  @IBAction func addTripButton(sender: UIButton) {
    if var newTrip = TripField.text {
      TripLabel.text = newTrip
      realm.write {
        realm.create(Trip.self, value: [newTrip])
      }
    }
    tripCount.text = "\(realm.objects(Trip).count)"
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let trips = realm.objects(Trip)
    
    tripCount.text = "\(trips.count)"
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

