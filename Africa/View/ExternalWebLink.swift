//
//  ExternalWebLink.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-20.
//

import SwiftUI

struct ExternalWebLink: View {
    
    let animal: Animal
    
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link)
                                                    ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWebLink_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLink(animal: animals[0])
    }
}
