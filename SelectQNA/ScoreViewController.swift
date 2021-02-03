//
//  ScoreViewController.swift
//  SelectQNA
//
//  Created by 歐陽橘子 on 2021/2/2.
//

import UIKit

class ScoreViewController: UIViewController {

    var scoreString: String!
    
    @IBOutlet weak var resultString: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultString.text = scoreString
    }
    
    @IBAction func tryAgainButton(_ sender: Any) {
    }
}
