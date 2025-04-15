//
//  ViewController.swift
//  WordGuessGame
//
//  Created by Özcan on 15.04.2025.
//

import UIKit

class FirstVC: UIViewController {
    
    var backgroundImage = UIImageView()
    var wordImage = UIImageView()
    let buttonStart = UIButton()
    let buttonHighScore = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: CIColor(red: 0.5, green: 1, blue: 0.8, alpha: 0.5))
        setUpUserInterfaces()
    }
    
    private func setUpUserInterfaces(){
        
//        let tapGR = UITapGestureRecognizer(target: self, action: #selector(tapGestureMethod))
//        view.addGestureRecognizer(tapGR)
        let screenWidth = view.frame.width
        
        backgroundImage.frame = CGRect(x: 30, y: 80, width: screenWidth - 60, height: screenWidth - 60 )
        backgroundImage.layer.cornerRadius = (screenWidth - 60)/2
        backgroundImage.layer.borderWidth = 3
        backgroundImage.layer.borderColor = UIColor.white.cgColor
        backgroundImage.clipsToBounds = true
        backgroundImage.image = UIImage(named: "gg")
        view.addSubview(backgroundImage)
        
        buttonStart.setTitleColor(.white, for: UIControl.State.normal)
        buttonStart.frame = CGRect(x: 110, y: 700, width: screenWidth - 220, height: 50)
        buttonStart.layer.cornerRadius = 8
        buttonStart.layer.borderWidth = 1
//        buttonStart.setTitle("Start", for: .normal)
//        buttonStart.titleLabel?.font = UIFont.boldSystemFont(ofSize: 27)
//        buttonStart.backgroundColor = UIColor(ciColor: CIColor(red: 0.9, green: 0.5, blue: 0.1, alpha: 0.5))
        buttonStart.addTarget(self, action: #selector(startButtonMethod), for: .touchUpInside)
        
        
        buttonStart.setBackgroundImage(UIImage(named: "ll"), for: .normal)
        buttonStart.clipsToBounds = true
        
        // Button yan gölgeleme ekleme kod bloğu
        buttonStart.layer.shadowColor = UIColor.black.cgColor
        buttonStart.layer.shadowOffset = CGSize(width: 4, height: 8)
        buttonStart.layer.shadowOpacity = 0.9
        buttonStart.layer.shadowRadius = 4
        view.addSubview(buttonStart)
        
        
        buttonHighScore.setTitleColor(.white, for: UIControl.State.normal)
        buttonHighScore.frame = CGRect(x: 110, y: 630, width: screenWidth - 220, height: 50)
        buttonHighScore.layer.cornerRadius = 8
        buttonHighScore.layer.borderWidth = 1
//        buttonHighScore.setTitle("High Scores", for: .normal)
//        buttonHighScore.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
//        buttonHighScore.backgroundColor = UIColor(ciColor: CIColor(red: 0.9, green: 0.5, blue: 0.1, alpha: 0.5))
        buttonHighScore.addTarget(self, action: #selector(highScoreButtonMethod), for: .touchUpInside)
        
        // Butona resim ekleme kod bloğu
        buttonHighScore.setBackgroundImage(UIImage(named: "mm"), for: .normal)
        buttonHighScore.clipsToBounds = true
        
        // Button yan gölgeleme ekleme kod bloğu
        buttonHighScore.layer.shadowColor = UIColor.black.cgColor
        buttonHighScore.layer.shadowOffset = CGSize(width: 4, height: 8)
        buttonHighScore.layer.shadowOpacity = 0.9
        buttonHighScore.layer.shadowRadius = 8
        view.addSubview(buttonHighScore)
        
        
        
    }
    
    @objc func startButtonMethod() {
        self.animateButtonBounce(buttonStart)
        self.navigationController?.pushViewController(SecondVC(), animated: true)
//        self.navigationController?.setViewControllers([SecondVC()], animated: true)
    }
    
    @objc func highScoreButtonMethod() {
        self.animateButtonBounce(buttonHighScore)
        print("These are high Scores")
    }
    
    // Buton zıplatma özelliği ekleme kodu
    func animateButtonBounce(_ button: UIButton) {
        UIView.animate(withDuration: 0.1,
                       animations: {
                           button.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                       },
                       completion: { _ in
                           UIView.animate(withDuration: 0.1) {
                               button.transform = CGAffineTransform.identity
                           }
                })
    }
}

