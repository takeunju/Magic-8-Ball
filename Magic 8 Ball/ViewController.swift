//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 탁은주 on 2018. 4. 27..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imgView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBAction func askPressed(_ sender: Any) {
        newBallImage()
    }
}



