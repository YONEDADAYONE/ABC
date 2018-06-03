//
//  owariViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/03.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class owariViewController: UIViewController {
    
    
    @IBOutlet weak var titileLabel: UILabel!
    @IBOutlet weak var myimageView: UIImageView!
    @IBOutlet weak var descoLabel: UILabel!
    var passdIndex:Int? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     


        
        titileLabel.text = waza[passdIndex!]
        descoLabel.text = setsumei[passdIndex!]
        myimageView.image = UIImage(named: waza[passdIndex!] + ".jpg")

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
