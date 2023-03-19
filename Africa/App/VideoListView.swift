//
//  VideoListView.swift
//  Africa
//
//  Created by YAQRUT on 2023-02-16.
//

import SwiftUI

struct VideoListView: View {
    
    
    var videos: [VideoModel] = Bundle.main.decode("videos-json")
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItem(video: item)
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
