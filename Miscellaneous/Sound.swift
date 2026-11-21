import SwiftUI
import AVFoundation

class MusicHelper {
    static let MusicPlayer = MusicHelper()
    var audioPlayer: AVAudioPlayer?
    var soundEffect: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Background", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func playStoryBGM() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "StoryBGM", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func playFinalBGM() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "StoryThreeBGM", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func playPracticeBGM() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "PracticeBGM", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func stopBackgroundMusic() {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.stop()
    }
    
    func playCorrectSound() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Correct", ofType: "wav")!)
        do {
            soundEffect = try AVAudioPlayer(contentsOf:aSound as URL)
            soundEffect!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func playWrongSound() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Wrong", ofType: "wav")!)
        do {
            soundEffect = try AVAudioPlayer(contentsOf:aSound as URL)
            soundEffect!.play()
        } catch {
            print("Cannot play the file")
        }
    }
    
    func playClickSound() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Click", ofType: "wav")!)
        do {
            soundEffect = try AVAudioPlayer(contentsOf:aSound as URL)
            soundEffect!.play()
        } catch {
            print("Cannot play the file")
        }
    }
}
