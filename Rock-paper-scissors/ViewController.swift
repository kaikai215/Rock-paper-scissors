//
//  ViewController.swift
//  Rock-paper-scissors
//
//  Created by Ryan on 2024/3/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var opponentImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let options = ["scissors", "rock", "paper"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func chooseGesture(_ sender: UIButton) {
        guard let playIndex = [0,1,2].firstIndex(of: sender.tag) else {
            return
        }
        let opponentIndex = Int.random(in: 0..<options.count)
        
        playerImageView.image = UIImage(named: options[playIndex])
        opponentImageView.image = UIImage(named: options[opponentIndex])
        
        let result = determineWinner(play: playIndex, opponent: opponentIndex)
        resultLabel.text = result
        
    }
    func determineWinner(play: Int, opponent: Int) -> String{
        if play == opponent {
            return "平手"
        }else if (play + 1) % options.count == opponent {
            return "你輸了"
        }else {
            return "你贏了"
        }
    }

}

