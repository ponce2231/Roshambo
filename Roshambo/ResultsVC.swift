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
    
    var rockValue:Int?
    var paperValue:Int?
    var scissorsValue:Int?
    
    @IBOutlet var rock:UIImageView!
    @IBOutlet var paper: UIImageView!
    @IBOutlet var scissors: UIImageView!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet var resultLabel: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        if let rockValue = self.rockValue{
            self.rock.image = UIImage(named: "d\(rockValue)")
        }else{
            self.rock.image = nil
        }
        
        if let paperValue = self.paperValue{
            self.paper.image = UIImage(named: "d\(paperValue)")
        }else{
            self.paper.image = nil
        }

        if let scissorsValue = self.scissorsValue{
            self.scissors.image = UIImage(named: "d\(scissorsValue)")
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

}
