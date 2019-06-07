//
//  ResultsVC.swift
//  Roshambo
//
//  Created by Christopher Ponce Mendez on 6/4/19.
//  Copyright © 2019 none. All rights reserved.
//

import Foundation
import UIKit

class ResultsVC: UIViewController {
    
    var inputValue:String?
    var storeData:Int?
    
    
    
    @IBOutlet var rock:UIImageView!
    @IBOutlet var paper: UIImageView!
    @IBOutlet var scissors: UIImageView!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet var resultLabel: UIView!

    // arreglar como dar valor de imagenes a variables`
    override func viewWillAppear(_ animated: Bool) {
        if let inputValue = self.inputValue{
            self.rock.image = UIImage(named: inputValue)
        }else{
            self.rock.image = nil
        }
        
        if let inputValue = self.inputValue{
            self.paper.image = UIImage(named: inputValue)
        }else{
            self.paper.image = nil
        }

        if let inputValue = self.inputValue{
            self.scissors.image = UIImage(named: inputValue)
            print("rock")
        }else{
            self.scissors.image = nil
        }
        
        self.rock.alpha = 0
        self.paper.alpha = 0
        self.scissors.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
            UIView.animate(withDuration: 0.3){
                self.rock.alpha = 1
                 self.paper.alpha = 1
                 self.scissors.alpha = 1
        }
    }
    
    @IBAction func playAgainButtonPressed(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func randomSelection() -> Int {
        let randomValue = 1 + arc4random() % 3
        
        return Int(randomValue)
    }
    
    

}
