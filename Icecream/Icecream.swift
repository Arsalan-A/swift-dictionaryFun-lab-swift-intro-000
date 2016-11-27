//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream" ]
    
    
    
    // 2.
    func names(forFlavor: String) -> [String] {
       
        var names: [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
        
            if value == forFlavor {
                names.append(key)
            }
            
            }
            return names
        }
    
    
    
    
    
    
    
    // 3.
    
    func count(forFlavor: String) -> Int {
        var count = 0
        for value in favoriteFlavorsOfIceCream.values {
            if value == forFlavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    
    // 4.
   
    func flavor(forPerson: String) -> String? {
        var favFlavor: String?

        for (key, value) in favoriteFlavorsOfIceCream {
            
            if key == forPerson {
                favFlavor = value
            }
        }
        
        if let favFlavor = favFlavor {
            return favFlavor
        }else {
            return nil
        }
    }
    
    
    
    
    
    // 5.
   
    
    func replace(flavor: String, forPerson: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[forPerson] != nil{
           
            favoriteFlavorsOfIceCream[forPerson] = flavor
            
            return true
            
        } else {
            
            return false
        }
    }
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil{
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            
            return true
            
        }else {
            
            return false
        }
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        
        return favoriteFlavorsOfIceCream.count
        
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }else {
            return false
        }
        
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var attendingList: String = ""
        for name in allNames {
            
            if name != allNames.last! {
                attendingList += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n"
            }else {
                attendingList += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            }
        }
        
        return attendingList
    }
    
    
    
    
    
    

}
