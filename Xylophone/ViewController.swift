
import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

     @IBAction func KeyPressed(_ sender: UIButton) {
         playSound(sound:sender.currentTitle!)
         UIView.animate(withDuration: 0.2) {
             sender.alpha = 0.5
         }

         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
             UIView.animate(withDuration: 0.2) {
                 sender.alpha = 1.0
             }
         }
    }
    
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}


