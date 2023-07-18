//
//  VideoPreviewImage.swift
//  iOS
//
//  Created by Nikita Thomas on 7/24/20.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
        
        
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
    }
}
