//
//  SecondPage.swift
//  WordGuessGame
//
//  Created by Özcan on 15.04.2025.
//

import UIKit

class SecondVC: UIViewController {
    
    let wordGuessTextField = UITextField()
    let submitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        setUpUIs()
        
        
    }
    
    private func setUpUIs() {
        
        createTextField(placeHolder: "Enter words", top: 120, bottom: 710, leading: 15, trailing: 15)
        
        
        
    }
    
    func createTextField(placeHolder: String,top: Int, bottom: Int,leading :Int, trailing:Int ) {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.layer.cornerRadius = 6
        textField.layer.borderWidth = 1
        textField.textAlignment = .left
        textField.backgroundColor = .white
        view.addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(top)),
            textField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-bottom)),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(leading)),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-trailing))
        
        ])
        
        
    }

}
