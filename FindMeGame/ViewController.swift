//
//  ViewController.swift
//  FindMeGame
//
//  Created by Vsevolod Onishchenko on 06/12/2018.
//  Copyright © 2018 Vsevolod Onishchenko. All rights reserved.
//

import UIKit
import MobileCoreServices
import Vision
import CoreML
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var objectLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    /// Перенести в презентер
    var cameraLayer: CALayer!
    var gameTimer: Timer!
    var timeRemaining = 60
    var currentScope = 0
    var highScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetup()
    }
    
    private func viewSetup() {
        
        let backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        topView.backgroundColor = backgroundColor
        bottomView.backgroundColor = backgroundColor
        scoreLabel.text = "0"
    }
    
    
}

