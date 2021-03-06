//
//  NumbersScreen.swift
//  ContactList
//
//  Created by Дмитрий Ивашинин on 22.11.2021.
//

import SwiftUI

struct NumbersScreen: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) {person in
                Section(header: Text(person.fullName))
                {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .navigationBarTitle("Contact list")
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen(persons: Person.getContacts())
    }
}
