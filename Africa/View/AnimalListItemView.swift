//
//  AnimalListItemView.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-18.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let Animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(Animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(Animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(Animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                
            }
        }
    }
}
        struct AnimalListItemView_Previews: PreviewProvider {
            static let animal: [Animal] = Bundle.main.decode("animals.json")
            
            static var previews: some View {
                AnimalListItemView(Animal: animal[1])
            }
        }

