//
//  VideoListItem.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-20.
//

import SwiftUI

struct VideoListItem: View {
    
    let video: VideoModel
    
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
                    .frame(width: 160)
                    .cornerRadius(20)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    
    static var previews: some View {
        VideoListItem(video: videos[0])
    }
}
