//
//  VideoModel.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-20.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
