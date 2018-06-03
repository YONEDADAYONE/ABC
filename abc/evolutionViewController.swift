//
//  evolutionViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/03.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class evolutionViewController: UIViewController {
    
    
    
    @IBOutlet weak var myText: UITextField!
    
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        
        let test = sender.value
        if (test == sender.minimumValue) {
            myText.text = "レベル5です。\(test)"
        } else if (test == sender.maximumValue) {
            myText.text = "進化できるレベルです。\(test)"
        } else {
            myText.text = "オムナイトはレベル\(test)" + "になった!"
        }
        //もしセンダーがマックスになったら"omustarへ遷移"
        if sender.value == Float(40) {
            performSegue(withIdentifier: "omustar", sender: self)
        } else {
            //処理はなし
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // backgraound image() 背景画像
        let bg = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        bg.image = UIImage(named: "海.jpg")
        bg.layer.zPosition = -1
        self.view.addSubview(bg)
        
        // Do any additional setup after loading the view.
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
