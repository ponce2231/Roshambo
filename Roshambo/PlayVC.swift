//
//  ViewController.swift
//  Roshambo
//
//  Created by Christopher Ponce Mendez on 6/4/19.
//  Copyright © 2019 none. All rights reserved.
//

import UIKit

class PlayVC: UIViewController {
    @IBOutlet var rockButton:UIButton!
    @IBOutlet var paperButton:UIButton!
    @IBOutlet var scissorsButton:UIButton!
    @IBOutlet var playLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func randomSelection() -> Int {
        let randomValue = 1 + arc4random() % 3
        
        return Int(randomValue)
    }

    
    @IBAction func rockButtonPressed(){
        let resultVC: ResultsVC
        
        resultVC = storyboard?.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
        
        resultVC.rockValue = self.randomSelection()
        self.present(resultVC,animated: true, completion: nil)
    }
}

