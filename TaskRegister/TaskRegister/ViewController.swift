//
//  ViewController.swift
//  TaskRegister
//
//  Created by 123 on 13.01.23.
//

import UIKit

class ViewController: UIViewController {
    let button1 = UIButton()
    let loginField = UITextField()
    var passwordField = UITextField()
    var theLabel = UILabel()
    let imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginField)
        loginField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo: view.topAnchor, constant: 190),
            loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            
            
        ])
        loginField.textColor = .systemGreen
        loginField.layer.cornerRadius = 5
        loginField.placeholder = "enter login"
        loginField.layer.borderWidth = 0.5
        loginField.becomeFirstResponder()
        loginField.keyboardAppearance = .dark
        
        
        
        
        view.addSubview(passwordField)
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 60),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            
        ])
        passwordField.textColor = .systemGreen
        passwordField.layer.cornerRadius = 5
        passwordField.placeholder = "enter password"
        passwordField.layer.borderWidth = 0.5
        passwordField.becomeFirstResponder()
        passwordField.keyboardAppearance = .dark
        
        
        
        
        
        view.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -140),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120)
            
        ])
        button1.setTitle("Войти", for: .normal)
        button1.layer.cornerRadius = 5
        button1.layer.borderWidth = 0.5
        button1.layer.shadowColor = UIColor.black.cgColor
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .lightGray
        button1.showsTouchWhenHighlighted = true
        
        button1.addTarget(self, action: #selector(nextView(sender:)), for: .touchUpInside)
        
        view.addSubview(theLabel)
        theLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            theLabel.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 25),
            theLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -125),
            theLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
        ])
        theLabel.textColor = .black
        theLabel.text = "Введите ваши данные"
        theLabel.adjustsFontSizeToFitWidth = true
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: theLabel.bottomAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -5),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5)
        ])
    }
    
    
    @objc func nextView(sender:UIButton) {
        let usr = "Username"
        let pas = "Password"
        if loginField.text == usr && passwordField.text == pas {
            theLabel.text = "Ваши данные введены верно!"
            theLabel.backgroundColor = .green
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "vc") as!
            NewViewController
            self.present(controller, animated: true, completion: nil)
        }else{
            theLabel.text = " Данные введены неверно!"
            theLabel.backgroundColor = .red
            imageView.image = UIImage(data: try! Data(contentsOf: URL(string:"https://www.meme-arsenal.com/memes/d57849838dbdab4d17fb394e98f736f7.jpg" )!))
        }
        
  }
        
        
}
