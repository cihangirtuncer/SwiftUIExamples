//
//  SoundsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI
import AVKit

class Soundmanager {
    
    static let instance = Soundmanager() // Singleton
    
    var player : AVAudioPlayer?
    
    enum SoundOption : String {
    case tada
    case badum
    }
    
    func playSound(sound : SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else{return}
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error{
            print("Error playing sound. \(error.localizedDescription)")
        }
        
    }
}



struct SoundsBootcamp: View {
    var body: some View {
        VStack(spacing: 20){
            Button {
                Soundmanager.instance.playSound(sound: .tada)
            } label: {
                Text("Tada sounds")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            Button {
                Soundmanager.instance.playSound(sound: .badum)
            } label: {
                Text("Badum sounds")
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
            }

        }
    }
}

struct SoundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBootcamp()
    }
}
