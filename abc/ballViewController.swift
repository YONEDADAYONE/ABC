//
//  ballViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/02.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ballViewController: UIViewController {
    
    
    @IBAction func onTapimage(_ sender: Any) {
        performSegue(withIdentifier: "segueko", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
