//
//  SecondPage.swift
//  WordGuessGame
//
//  Created by Özcan on 15.04.2025.
//

import UIKit

class SecondVC: UIViewController {
    
    var wordGuessTextField = UITextField()
    var userGuessTF1 = UITextField()
    var userGuessTF2 = UITextField()
    var userGuessTF3 = UITextField()
    var userGuessTF4 = UITextField()
    var userGuessTF5 = UITextField()
    var userGuessTF6 = UITextField()
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
    }
    
    private func setUpUIs() {
        
        // O kadar modüler olmayan bir kod bloğu ki ben bile utandım yazarken
        wordGuessTextField = createTextField(placeHolder: "Enter words", top: 120, width: 380, leading: 11, height: 50)
        userGuessTF1 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 11, height: 45)
        userGuessTF2 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 77, height: 45)
        userGuessTF3 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 142, height: 45)
        userGuessTF4 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 209, height: 45)
        userGuessTF5 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 275, height: 45)
        userGuessTF6 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 341, height: 45)
    }
    
    func createTextField(placeHolder: String,top: Int, width: Int,leading :Int, height:Int ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.layer.cornerRadius = 6
//        textField.layer.borderWidth = 1
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.borderWidth = 0.5
        textField.frame = CGRect(x: leading, y: top, width: width, height: height)
        view.addSubview(textField)
        
        
        
//        textField.translatesAutoresizingMaskIntoConstraints = false
        
//        NSLayoutConstraint.activate([
//            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(top)),
//            textField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-bottom)),
//            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(leading)),
//            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-trailing))
//        ])
        
        return textField
    }
    
    func pickRandomWordFunc() {
        if let randomName = fourLetterWordArray.randomElement() {
            print("\(randomName)")
            self.wordGuessTextField.text = randomName
            if randomName.count > 3 {
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF1.isHidden = true
                userGuessTF6.isHidden = true
                
                if let one = userGuessTF1.text {
                    if one.count > 1 && one.isEmpty {
                        print("uyarı1")
                    }else {
                            if randomName.first == Character(one) {
                                userGuessTF1.backgroundColor = .green
                            }else{
                            }
                    }
                    
                }

            }else if randomName.count > 4 {
                userGuessTF1.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF6.isHidden = true
            }else {
                userGuessTF1.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF6.backgroundColor = UIColor.systemYellow
            }
        }
    }
}
