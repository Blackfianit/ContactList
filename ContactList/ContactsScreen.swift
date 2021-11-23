//
//  ContactsScreen.swift
//  ContactList
//
//  Created by Дмитрий Ивашинин on 22.11.2021.
//

import SwiftUI

struct ContactsScreen: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactInfo(person: person)){
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen(persons: Person.getContacts())
    }
}
