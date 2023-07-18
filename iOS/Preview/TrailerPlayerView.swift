//
//  TrailerPlayerView.swift
//  iOS
//
//  Created by Nikita Thomas on 11/7/20.
//

import SwiftUI
import VideoPlayer
//import AVKit
//import KingfisherSwiftUI

struct TrailerPlayerView: View {
    var videoURL = URL(string: "abc");
    
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: exampleVideoURL, playVideo: .constant(true))
    }
}
