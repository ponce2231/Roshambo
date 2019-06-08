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

    //MARK: Segue only
    
    //{
    
    @IBAction func paperButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "paperSegue"{
            var resultVC: ResultsVC
            
            resultVC = segue.destination as! ResultsVC
            resultVC.inputValue = "selection1"
        }
        
        if segue.identifier == "scissorsSegue"{
            var resultVC: ResultsVC
            resultVC = segue.destination as! ResultsVC
            
            resultVC.inputValue = "selection3"
        }
        
    }
    
    //}
    
    //MARK: code only
    @IBAction func rockButtonPressed(){
        var controller: ResultsVC
        
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
        
        controller.inputValue = "selection2"

        self.present(controller,animated: true, completion: nil)
    }
}

