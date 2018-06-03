//
//  wazapViewController.swift
//  abc
//
//  Created by 米田大弥 on 2018/06/03.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

//配列
let waza = ["ハイドロポンプ","ふぶき","あまごい","げんしのちから"]
var setsumei = ["雨下ハイドロポンプで全抜き!","ふぶきで相手を凍らすこともある!","あまごいで素早さ二倍!","げんしのちからで能力上昇!"]
//var myIndex = 0

class wazapViewController: UIViewController
,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var TableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return waza.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //セルに表示する値を設定する
        cell.textLabel?.text = waza[indexPath.row]
        
        return cell
    }

    var selecteIndex:Int!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selecteIndex = indexPath.row
        //セグエの名前をしていして
        performSegue(withIdentifier: "seguyo", sender: nil)
    }
    //セグエをつかって
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc:owariViewController = segue.destination as! owariViewController
        
        dvc.passdIndex = selecteIndex
    }
    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        myIndex = indexPath.row
//        performSegue(withIdentifier: "seguyo", sender: self)
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
