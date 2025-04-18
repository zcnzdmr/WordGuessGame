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
    var randomName = ""
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
        "wind" , // noun (rüzgâr),
        "apple", // noun
        "brave", // adjective
        "crane", // noun/verb
        "daisy", // noun
        "eagle", // noun
        "flame", // noun
        "grape", // noun
        "happy", // adjective
        "jolly", // adjective
        "knife",
        "animal", // noun
        "battle", // noun
        "castle", // noun
        "danger", // noun
        "effort", // noun
        "forest", // noun
        "galaxy", // noun
        "hunter", // noun
        "island", // noun
        "jungle"  // noun
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: CIColor(red: 0.5, green: 1, blue: 0.8, alpha: 0.5))
        setUpUIs()
        randomName = fourLetterWordArray.randomElement() ?? ""
        self.wordGuessTextField.text = randomName
        pickRandomWordFunc()
    }
    
    private func setUpUIs() {
        
        // O kadar modüler olmayan bir kod bloğu ki ben bile utandım yazarken
        wordGuessTextField = createTextField(placeHolder: "Enter words", top: 120, width: 380, leading: 11, height: 50)
        userGuessTF1 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 11, height: 45,  tag: 0)
        userGuessTF2 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 77, height: 45,  tag: 1)
        userGuessTF3 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 142, height: 45, tag: 2)
        userGuessTF4 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 209, height: 45, tag: 3)
        userGuessTF5 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 275, height: 45, tag: 4)
        userGuessTF6 = createTextField(placeHolder: "_", top: 190, width: 50, leading: 341, height: 45, tag: 5)
    }
    
    func createTextField(placeHolder: String,top: Int, width: Int,leading :Int, height:Int, tag : Int = 0 ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.layer.cornerRadius = 6
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.borderWidth = 0.5
        textField.autocorrectionType = .no
        textField.tag = tag
        textField.addTarget(self, action: #selector(guessWordFuncTF), for: .editingChanged)
        textField.frame = CGRect(x: leading, y: top, width: width, height: height)
        view.addSubview(textField)
        
        textField.delegate = self
        return textField
    }
    
    func pickRandomWordFunc() {
        if randomName.count > 3 && randomName.count < 5 {
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF1.isHidden = true
                userGuessTF6.isHidden = true

            }else if randomName.count > 4 && randomName.count < 6 {
                userGuessTF1.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF6.isHidden = true
            }else if randomName.count >= 6 {
                userGuessTF1.backgroundColor = UIColor.systemYellow
                userGuessTF2.backgroundColor = UIColor.systemYellow
                userGuessTF3.backgroundColor = UIColor.systemYellow
                userGuessTF4.backgroundColor = UIColor.systemYellow
                userGuessTF5.backgroundColor = UIColor.systemYellow
                userGuessTF6.backgroundColor = UIColor.systemYellow
            }
        }
    
    
    @objc func guessWordFuncTF() {
        
        guard var one = userGuessTF1.text else {
            print("hata1")
            return
        }
        one = one.lowercased()
        print(one)
 
            if randomName.first == Character(one) {
                userGuessTF1.backgroundColor = UIColor.systemGreen
            
        }
    
    }
}


extension SecondVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return (string.count <= 1)
    }
}


