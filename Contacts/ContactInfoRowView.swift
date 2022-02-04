//
//  ContactRowView.swift
//  Contacts
//
//  Created by Станислав Буйновский on 04.02.2022.
//

import SwiftUI

struct ContactInfoRowView: View {
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
            Spacer()
        }
        .padding()
        .foregroundColor(.blue)
    }
}

struct ContactInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoRowView(imageName: "", text: "")
    }
}
