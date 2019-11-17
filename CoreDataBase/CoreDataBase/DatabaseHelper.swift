//
//  DatabaseHelper.swift
//  CoreDataBase
//
//  Created by jabeed on 06/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
   static var shareInstance = DatabaseHelper()
    var context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func save (object:[String:String]) {
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        do {
            try context?.save()
            
        }catch{
            print("data is not save")
        }
        
    }
    
}
