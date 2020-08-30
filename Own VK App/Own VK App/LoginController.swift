//
//  ViewController.swift
//  Own VK App
//
//  Created by Tatyana on 18.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    //Outlets
    @IBOutlet weak var enterBtn: UIButton!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //Variables
    let userLogin = ""
    let userPassword = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTF.delegate = self
        passwordTF.delegate = self
        
        view.setGradient(colorOne: #colorLiteral(red: 0.5367406457, green: 0.8022211858, blue: 0.8358970801, alpha: 1), colorTwo: #colorLiteral(red: 0.4192527837, green: 0.6304774073, blue: 1, alpha: 1))
        enterBtn.layer.cornerRadius = 12
        enterBtn.setShadow()
        
        NotificationCenter.default.addObserver(self, selector: #selector(kbWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func kbWillShow(notificaion: Notification) {
        guard let keyboardRect = notificaion.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect
            else { return }
        
        scrollView.contentInset.bottom = keyboardRect.height
    }
    
    
    //MARK: IBActions
    @IBAction func enterBtnPressed(_ sender: Any) {
        if loginTF.text != userLogin || passwordTF.text != userPassword {
            Alert.showBasicAlert(on: self, with: "Ошибка", massage: "Проверьте правильность                            введенных данных")
        }
    }
}


extension LoginController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            loginTF.resignFirstResponder()
            passwordTF.becomeFirstResponder()
        } else {
            passwordTF.resignFirstResponder()
        }
        return true
    }
}

