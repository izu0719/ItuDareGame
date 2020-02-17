//
//  ViewController.swift
//  ItuDareGame
//
//  Created by 坂本 泉 on 2020/02/08.
//  Copyright © 2020 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var ituLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var dositaLabel: UILabel!
    
    let ituArray: [String] = ["一年前", "１週間","昨日","今日","一時間前","10年前"]
let dokodeArray: [String] = ["山の上で", "アメリカで","学校で","クラスで","家で","公園で"]
    let daregaArray: [String] = ["僕が", "大統領が","先生が","友達が","弟が","妹が"]
    let dositaArray: [String] = ["叫んだ", "演説した","怒った","踊った","ご飯を食べた","転んだ"]
    
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func change(){
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        dositaLabel.text = dositaArray[index]
        
        index = index + 1
        
        if index > 5{
            index = 0
        }
    }
    @IBAction func random(){
        let ituIndex = Int.random(in: 0...5)
         let dokodeIndex = Int.random(in: 0...5)
         let daregaIndex = Int.random(in: 0...5)
         let dositaIndex = Int.random(in: 0...5)
        
        print("いつ：\(ituIndex)")
        print("どこで：\(dokodeIndex)")
        print("だれが：\(daregaIndex)")
        print("どうした：\(dositaIndex)")
        
        ituLabel.text = ituArray[index]
               dokodeLabel.text = dokodeArray[index]
               daregaLabel.text = daregaArray[index]
               dositaLabel.text = dositaArray[index]
    }
    @IBAction func reset(){
        ituLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        dositaLabel.text = "---"
        
        index = 0
    }
}

