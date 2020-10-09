//
//  ViewController.swift
//  CardGame
//
//  Created by Judy on 9/30/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var P1Card1: UIImageView!
    @IBOutlet weak var P1Card2: UIImageView!
    @IBOutlet weak var P1Card3: UIImageView!
    @IBOutlet weak var P2Card1: UIImageView!
    @IBOutlet weak var P2Card2: UIImageView!
    @IBOutlet weak var P2Card3: UIImageView!
    
    @IBOutlet weak var labelWinner: UILabel!
    
    var card1 = -1
    var card2 = -1
    var card3 = -1
    var card4 = -1
    var card5 = -1
    var card6 = -1
    
    let imageNames = ["AC", "AD", "AH", "AS", "2C", "2D", "2H", "2S", "3C", "3D", "3H", "3S", "4C", "4D", "4H", "4S", "5C", "5D", "5H", "5S", "6C", "6D", "6H", "6S", "7C", "7D", "7H", "7S", "8C", "8D", "8H", "8S", "9C", "9D", "9H", "9S", "10C", "10D", "10H", "10S", "JC", "JD", "JH", "JS", "QC", "QD", "QH", "QS", "KC", "KD", "KH", "KS",]
    
    var numbers: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initial()
    }
    
    func initial() {
        for number in 0..<52 {
            numbers.append(number)
        }
    }
    
    @IBAction func drawCards(_ sender: UIButton) {
        numbers.shuffle()
        card1 = numbers[0]
        P1Card1.image = UIImage(named: imageNames[card1])
        card2 = numbers[1]
        P1Card2.image = UIImage(named: imageNames[card2])
        card3 = numbers[2]
        P1Card3.image = UIImage(named: imageNames[card3])
        card4 = numbers[3]
        P2Card1.image = UIImage(named: imageNames[card4])
        card5 = numbers[4]
        P2Card2.image = UIImage(named: imageNames[card5])
        card6 = numbers[5]
        P2Card3.image = UIImage(named: imageNames[card6])
        updateWinner()
    }
    
    func updateWinner() {
        if card1 == 3 || card2 == 3 || card3 == 3 {
            labelWinner.text = "Wineer is Player 1"
        } else if card4 == 3 || card5 == 3 || card6 == 3 {
            labelWinner.text = "Wineer is Player 2"
        } else {
            labelWinner.text = "No Winner"
        }
    }
}

