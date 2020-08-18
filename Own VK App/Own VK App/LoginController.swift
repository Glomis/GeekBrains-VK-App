//
//  ViewController.swift
//  Own VK App
//
//  Created by Max on 16.08.2020.
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
    let userLogin = "admin"
    let userPassword = "admin"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterBtn.layer.cornerRadius = 12
        
        NotificationCenter.default.addObserver(self, selector: #selector(kbWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func kbWillShow(notificaion: Notification) {
        guard let keyboardRect = notificaion.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect
        else { return }
        
        scrollView.contentInset.bottom = keyboardRect.height
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Ошибка",
                                      message: "Проверьте правильность введенных данных.",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок", style: .cancel)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    //MARK: IBActions
    @IBAction func enterBtnPressed(_ sender: Any) {
        if loginTF.text != userLogin || passwordTF.text != userPassword {
            showAlert()
        }
    }
}

