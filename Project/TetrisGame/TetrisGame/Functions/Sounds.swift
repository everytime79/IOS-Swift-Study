//
//  Sounds.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/02.
//

// AVKit 사운드 , BG

import Foundation
import AVKit

class Sounds {
    
    var bgSound : AVAudioPlayer!
    var buttonSound : AVAudioPlayer!
    
    init() {
        if let url = Bundle.main.path(forResource: "bg_maple", ofType: "mp3"){
            do{
                bgSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url))
            }catch{
                print("error")
            }
            bgSound.volume = 0.1 //볼륨
            bgSound.numberOfLoops = -1 //무한반복
            bgSound.play() //플레이
        }
    }
    
    func buttonSounds(buttonName : String) {
        if let url = Bundle.main.path(forResource: buttonName, ofType: "mp3"){
            do{
                buttonSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url))
            }catch{
                print("error")
            }
            buttonSound.volume = 1 //볼륨
            buttonSound.numberOfLoops = 0 //반복은 필요 없음.
            buttonSound.play() //플레이
        }
    }
    
    func soundStop() {
        bgSound.pause()
    }
    
    func soundPlay() {
        bgSound.play()
    }
    //Variables.isPause
    func stopandsound() {
        if Variables.isPause{
            bgSound.pause()
            
        }else{
            bgSound.play()
        }
        
    }
}
