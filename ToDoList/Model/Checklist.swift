//
//  Checklist.swift
//  ToDoList
//
//  Created by Macbook Pro on 2/4/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit 

class Checklist: NSObject, NSCoding {
    
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
      name = aDecoder.decodeObject(forKey: "Name") as! String
      items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
      super.init() 
    }
    
    func encode(with aCoder: NSCoder) {
      aCoder.encode(name, forKey: "Name")
      aCoder.encode(items, forKey: "Items")
    }
    
   
    
   
    
}
