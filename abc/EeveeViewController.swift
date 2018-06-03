//
//  EeveeViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/03.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit
import AVFoundation

class EeveeViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // backgraound image() 背景画像
        let bg = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        bg.image = UIImage(named: "背景.jpg")
        bg.layer.zPosition = -1
        self.view.addSubview(bg)
        
        
        //再生する　audio ファイルのパスを作成
        let audioPath = Bundle.main.path(forResource: "138 (7)", ofType: "wav")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        //audio を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        //エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        //謎のFixつけた。要質問
        audioPlayer.delegate = self as? AVAudioPlayerDelegate
        audioPlayer.prepareToPlay()
        
    }
    
    //ボタンがタップされたときの
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if (audioPlayer.isPlaying) {
            audioPlayer.stop()
            button.setTitle("Stop", for: UIControlState())
        }
        else{
            audioPlayer.play()
            button.setTitle("Play", for: UIControlState())
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
