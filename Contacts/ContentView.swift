//
//  ContentView.swift
//  Contacts
//
//  Created by Станислав Буйновский on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                CompactListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.crop.rectangle")
                        Text("Compact")
                    }
                DetailedListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.text.rectangle")
                        Text("Detailed")
                    }
            }
            .navigationTitle("Contacts")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
