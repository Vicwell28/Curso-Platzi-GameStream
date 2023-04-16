//
//  PlayVideoView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI
import AVKit

struct PlayVideoView: View {
    
    var player : AVPlayer
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear {
                player.play()
            }
            .onDisappear {
                player.pause()
            }.ignoresSafeArea()
    }
}
