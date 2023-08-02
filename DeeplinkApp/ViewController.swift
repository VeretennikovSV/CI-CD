//
//  ViewController.swift
//  DeeplinkApp
//
//  Created by VERETENNIKOV Sergey on 25.07.2023.
//

import UIKit

class ViewController: UINavigationController {
    
    lazy var tf: UITextField = {
        let tf = UITextField(frame: .init(origin: .init(x: 100, y: 550), size: .init(width: 250, height: 100)))
        
        tf.borderStyle = .roundedRect
        
        return tf
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(frame: .init(origin: .init(x: 100, y: 400), size: .init(width: 100, height: 40)))
        
        view.addSubview(button)
        button.setTitle("Deeplink?", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 10
        button.setTitleColor(.systemPurple, for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(deepLink), for: .touchUpInside)
        title = "Deeplinking"
        
        view.addSubview(tf)
    }
    
    @objc
    private func deepLink() {
        let tfText = tf.text!
        let url = URL(string: "ronline://open_account&source=\(tfText)")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}
