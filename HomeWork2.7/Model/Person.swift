//
//  Person.swift
//  HomeWork2.7
//
//  Created by Михаил Позялов on 09.11.2021.
//

import Foundation

let personInfo = DataManager()

struct Person {
    var name: String
    var surName: String
    var phone: String
    var email: String
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.data.arrayOfName.shuffled()
        let surNames = DataManager.data.arrayOfSurName.shuffled()
        let phones = DataManager.data.arrayOfPhone.shuffled()
        let emails = DataManager.data.arrayOfEmail.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surName: surNames[index],
                                phone: phones[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

    
    
    
    

