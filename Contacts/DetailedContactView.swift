//
//  DetailedContactView.swift
//  Contacts
//
//  Created by Станислав Буйновский on 04.02.2022.
//

import SwiftUI

struct DetailedContactView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            ContactInfoRowView(imageName: "phone.fill", text: person.phone)
            ContactInfoRowView(imageName: "envelope.fill", text: person.email)
            Spacer()
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(person: Person.getPerson())
    }
}
