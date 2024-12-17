//
//  ViewController.swift
//  Aug_24_UserDefaults_Demo
//
//  Created by Vishal Jagtap on 17/12/24.
//

import UIKit

class ViewController: UIViewController {

    let userDefaults = UserDefaults.standard
    let student = Student(name: "Suhaan",
                          rollNumber: 102,
                          city: "Pune",
                          state: "Maharashtra")
    
    let colours = ["Blue", "Green", "Red", "Yellow", "White", "Black"]
    let book : [String : Any] = ["name" : "Harry Potter",
                "author" : "J K Rowling",
                "price" : 100]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storeValuesINUserDefaults()
        
        getValuesFromUserDefaults()
    }
    
    func storeValuesINUserDefaults(){
        
        userDefaults.set("Aniket", forKey: "name")
        userDefaults.set(101, forKey: "rollnumber")
        userDefaults.setValue("Pune", forKey: "city")
        userDefaults.setValue("Maharashtra", forKey: "state")
        
        userDefaults.set(colours, forKey: "colours")
        userDefaults.set(book, forKey: "book")
        
        userDefaults.set(true, forKey: "bool")
    }
    
    func getValuesFromUserDefaults(){
        
        let name = userDefaults.string(forKey: "name")
        let rollNumber = userDefaults.integer(forKey: "rollnumber")
        let city =  userDefaults.string(forKey: "city")
        let state = userDefaults.string(forKey: "state")
        
        let boolValue = userDefaults.bool(forKey: "bool")
        
        let extractedColours = userDefaults.array(forKey: "colours")
        let extractedBookDetails = userDefaults.dictionary(forKey: "book")
        
        for key in extractedBookDetails!.keys {
            print("key -- \(key) -- value -- \(extractedBookDetails![key]!)")
        }
            
        for colour in extractedColours as! [String] {
            print("colour -- \(colour)")
        }
        
        print("name -- \(name!) -- rollNumber -- \(rollNumber) -- city -- \(city!)  -- state -- \(state!)")
        
        print(boolValue)
    }
}
