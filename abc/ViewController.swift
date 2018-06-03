//
//  ViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/02.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myLabel: UITextView!

    @IBAction func NON(_ sender: UIButton) {
        
        //カスタムフォントを指定 カスタムフォントができなかった理由を聞く!
//        myLabel.font = UIFont(name:"PKMN-REGULAR ", size: 16)
        // Do any additional setup after loading the view, typically from a nib.
        
        let alert = UIAlertController(
            title: "準備ができたらきておくれ!", message: "新しい世界が君を待っているぞ!", preferredStyle: UIAlertControllerStyle.alert)
        
        
        
        let defaultAction = UIAlertAction(title: "これは...無限ループ...", style: .default, handler:{
            // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
        })
        
        //
        alert.addAction(defaultAction)
        
        //
        present(alert,animated: true,completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // backgraound image() 背景画像
        let bg = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        bg.image = UIImage(named: "オーキド背景.jpeg")
        bg.layer.zPosition = -1
        self.view.addSubview(bg)
        

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
