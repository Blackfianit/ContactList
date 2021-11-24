//
//  ContactInfo.swift
//  ContactList
//
//  Created by Дмитрий Ивашинин on 23.11.2021.
//

import SwiftUI

struct ContactInfo: View {
    var person: Person
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Spacer()
            }
            .padding()
            ExtraInfo(person: person)
        }
        .navigationTitle(person.fullName)
    }
}

//struct ContactInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactInfo(person: person)
//    }
//}
