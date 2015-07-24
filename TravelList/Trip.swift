//
//  Trip.swift
//  TravelList
//
//  Created by manatee on 7/18/15.
//  Copyright (c) 2015 diligentagility. All rights reserved.
//

import Foundation
import RealmSwift


class Trip: Object {
  dynamic var tripName = "name"
  dynamic var startDate = NSDate()
  dynamic var endDate = NSDate()
  dynamic var numberOfDays: Int = 5
  dynamic var tripImage = "imagePath"
  
  let lists = List<ItemList>()
}


class ItemList: Object {
  dynamic var listName = "name"
  dynamic var listImage = "imagePath"
  
  let items = List<Item>()
}


class Item: Object {
  dynamic var itemName = "name"
  dynamic var itemCount: Int = 1
  dynamic var itemImage = "imagePath"
  dynamic var packed: Bool = true
  
}
