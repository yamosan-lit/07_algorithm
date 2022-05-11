//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number != 0 && number % 3 == 0 {
            return true
        }
//        // 問題2: 1の位が3かどうか調べる
//        if number % 10 == 3 {
//            return true
//        }
//        // 問題3: 10の位が3かどうか調べる
//        if (number / 10) % 10 == 3 {
//            return true
//        }
        // 問題4: 3がつくかどうか調べる
        var checkNum: Int = number
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true
            } else {
                checkNum /= 10
            }
        }
        return false
    }
    
    func isWise() -> Bool {
        func isPrimer (_ n: Int) -> Bool {
            if n <= 1 {
                return false
            }
            if n == 2 {
                return true
            }
            for i in 2..<n {
                if n % i == 0 {
                    return false
                }
            }
            return true
        }
        
        return isPrimer(number)
    }
    
    func display() {
        countLabel.text = String(number)
        
        if isAho() {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isWise() {
            faceLabel.text = "( ｰ`дｰ´)ｷﾘｯ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func plusButton(){
        number = number + 1
        
        display()
    }

    @IBAction func clear(_ sender: UIButton) {
        number = 0
        
        display()
    }
}


