//
//  NewViewController.swift
//  TaskRegister
//
//  Created by 123 on 18.01.23.
//


import UIKit



class NewViewController: UIViewController {
    
    let button2 = UIButton()
    let imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            button2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -300),
            button2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
            
        
        
        ])
        
        button2.setTitle("Назад", for: .normal)
        button2.setTitleColor(.systemBlue, for: .normal)
        button2.layer.cornerRadius = 10
        
        
        button2.addTarget(self, action: #selector(back(sender: )), for: .touchUpInside)
        
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -25),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 25),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 15)
        ])
        imageView.image = UIImage(data: try! Data(contentsOf: URL(string:"https://img.freepik.com/premium-vector/welcome-sign-hand-lettering-text-posters-greeting-cards-design-modern-calligraphy-your-unique-design-welcome-word-isolated-white-background_110464-666.jpg?w=2000" )!))
    }
    @objc func back(sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "pc") as!
        ViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    
}



