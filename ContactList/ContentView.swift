//
//  ContentView.swift
//  ContactList
//
//  Created by Дмитрий Ивашинин on 22.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let persons = Person.getContacts()
        TabView {
            ContactsScreen(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersScreen(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Phones")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
