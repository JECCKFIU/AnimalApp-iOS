//
//  Sound.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 14/7/23.
//

import Foundation
import AVFoundation


var player: AVAudioPlayer? // sound

func playSound(key: String) {
    guard let url = Bundle.main.url(forResource: key, withExtension: "mp3") else { return }
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
    } catch {
        print("error")
    }// end do/catch
}
    
