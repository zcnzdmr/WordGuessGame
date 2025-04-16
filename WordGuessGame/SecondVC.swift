//
//  SecondPage.swift
//  WordGuessGame
//
//  Created by Özcan on 15.04.2025.
//

import UIKit

class SecondVC: UIViewController {
    
    var wordGuessTextField = UITextField()
    var userGuessTF = UITextField()
    let submitButton = UIButton()
    let fourLetterWordArray: [String] = [
        "blue", // adjective (mavi)
        "kind", // adjective (nazik)
        "frog", // noun (kurbağa)
        "cool", // adjective (havalı)
        "milk", // noun (süt)
        "calm", // adjective (sakin)
        "book", // noun (kitap)
        "bold", // adjective (cesur)
        "star", // noun (yıldız)
        "cold", // adjective (soğuk)
        "fire", // noun (ateş)
        "dark", // adjective (karanlık)
        "luck", // noun (şans)
        "soft", // adjective (yumuşak)
        "wind"  // noun (rüzgâr)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: CIColor(red: 0.5, green: 1, blue: 0.8, alpha: 0.5))
        setUpUIs()
        pickRandomWordFunc()
        let screenWidth = view.frame.width
        print(screenWidth)
    }
    
    private func setUpUIs() {
        wordGuessTextField = createTextField(placeHolder: "Enter words", top: 120, bottom: 710, leading: 15, trailing: 15)
        userGuessTF = createTextField(placeHolder: "Some words", top: 190, bottom: 630, leading: 11, trailing: 331)
        
    }
    
    func createTextField(placeHolder: String,top: Int, bottom: Int,leading :Int, trailing:Int ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.layer.cornerRadius = 6
//        textField.layer.borderWidth = 1
        textField.textAlignment = .center
        textField.backgroundColor = .white
        view.addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(top)),
            textField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-bottom)),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(leading)),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-trailing))
        
        ])
        
        return textField
    }
    
    func pickRandomWordFunc() {
        if let randomName = fourLetterWordArray.randomElement() {
            print("\(randomName)")
            self.wordGuessTextField.text = randomName

        }
    }

}
