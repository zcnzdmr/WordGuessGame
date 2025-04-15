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

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUserInterfaces()
    }
    
    private func setUpUserInterfaces(){
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(tapGestureMethod))
        view.addGestureRecognizer(tapGR)
        
        backgroundImage.frame = view.bounds
        backgroundImage.image = UIImage(named: "bb")
        view.addSubview(backgroundImage)
        
    }
    
    @objc func tapGestureMethod() {
        self.navigationController?.setViewControllers([SecondVC()], animated: true)
        print("clicked")
    }


}

