//
//  DetailedListView.swift
//  Contacts
//
//  Created by Станислав Буйновский on 04.02.2022.
//

import SwiftUI

struct DetailedListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Text(person.fullName)
                .font(.title3)
            ContactInfoRowView(imageName: "phone.fill", text: person.phone)
            ContactInfoRowView(imageName: "envelope.fill", text: person.email)
        }
        .listStyle(.plain)
    }
}

struct DetailedListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedListView(persons: [])
    }
}
