//
//  ViewController.swift
//  Kadai2-UIKit
//
//  Created by sako0602 on 2023/03/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kadai: UILabel!
    @IBOutlet weak private var numText1: UITextField!
    @IBOutlet weak private var numText2: UITextField!
    @IBOutlet weak var calcStatus: UISegmentedControl!
    @IBOutlet weak private var total: UILabel!
    @IBAction func calcButton(_ sender: Any) {
        
        let unwrappedNum1 = Float(numText1.text ?? "") ?? 0.0
        let unwrappedNum2 = Float(numText2.text ?? "") ?? 0.0
        
        if calcStatus.selectedSegmentIndex == 0 {
            total.text = String(unwrappedNum1 + unwrappedNum2)
        } else if calcStatus.selectedSegmentIndex == 1 {
            total.text = String(unwrappedNum1 - unwrappedNum2)
        } else if calcStatus.selectedSegmentIndex == 2 {
            total.text = String(unwrappedNum1 * unwrappedNum2)
        } else if calcStatus.selectedSegmentIndex == 3 {
            total.text = String(unwrappedNum1 / unwrappedNum2)
            if unwrappedNum1 == 0 || unwrappedNum2 == 0 {
                total.text = "割る数には0以外を入力してください"
            }
        }
    }
    
    override func viewDidLoad() {//🟥使わない時は消す //{}VIewControler画面が最初に表示された時に、一度だけ実行される。
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        kadai.text = "課題２ UIKit"
        }

}

