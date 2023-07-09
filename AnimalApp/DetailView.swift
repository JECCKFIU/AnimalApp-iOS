//
//  DetailView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 11/7/23.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case Pig
        case Sheep
    }
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            
            print("Error playing sound. \(error.localizedDescription)")
            
        }//end do
        
    }//end playSound
    
}//end SoundManager


struct DetailView: View {
    
    var animal: Animal
    
    var body: some View {
        
        VStack(spacing:25){
            
   
            Image(animal.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .cornerRadius(20)
            
            Text(animal.name)
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            Text(animal.field)
                .fontWeight(.semibold)
                .font(.system(size: 15))
            
            
            Text(animal.info)
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .lineLimit(7)
            
            HStack {
                
                Spacer()
                
                Link( destination: animal.url, label:{
                    Text("see more")
                })
                
                Spacer()
                
                Button(action: {//.imageName = .Pig/.Sheep
                    SoundManager.instance.playSound(sound: .Pig)
                }) {
                    VStack {
                        Text("Hear Me!")
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                Spacer()
            }
            
            Spacer()
            
        }.padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: AnimalList.animals.first!)
    }
}
