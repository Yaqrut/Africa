//
//  CoverImageView.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-16.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
    
    struct CoverImageView_Previews: PreviewProvider {
        static var previews: some View {
            CoverImageView()
                .previewLayout(.fixed(width: 300, height: 300))
        }
    }
}
