//
//  CompactListView.swift
//  Contacts
//
//  Created by Станислав Буйновский on 04.02.2022.
//

import SwiftUI

struct CompactListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(
                person.fullName,
                destination: DetailedContactView(person: person)
            )
        }
        .listStyle(.plain)
    }
}

struct CompactListView_Previews: PreviewProvider {
    static var previews: some View {
        CompactListView(persons: [])
    }
}
