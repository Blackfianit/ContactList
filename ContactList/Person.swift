//
//  Contact.swift
//  ContactList
//
//  Created by Дмитрий Ивашинин on 22.11.2021.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        for counter in 0 ... names.count - 1 {
            let person = Person(
                id: counter,
                name: names[counter],
                surname: surnames[counter],
                email: emails[counter],
                phoneNumber: phoneNumbers[counter]
            )
            persons.append(person)
        }
        return persons
    }
}
