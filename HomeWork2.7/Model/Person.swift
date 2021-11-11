//
//  Person.swift
//  HomeWork2.7
//
//  Created by Михаил Позялов on 09.11.2021.
//

import Foundation

struct Person {
    let name: String
    let surName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}

extension Person {
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.data.arrayOfName.shuffled()
        let surNames = DataManager.data.arrayOfSurName.shuffled()
        let phones = DataManager.data.arrayOfPhone.shuffled()
        let emails = DataManager.data.arrayOfEmail.shuffled()
        
        let iterationCount = min(
            names.count,
            surNames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(name: names[index],
                                surName: surNames[index],
                                phone: phones[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
    
    
    

