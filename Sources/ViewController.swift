import UIKit
import FLEX

final class ViewController: UIViewController {
    private let subView = UIButton(configuration: .bordered())
    private let textField = UITextField()
    
    var pathTo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        view.addSubview(subView)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        textField.placeholder = "Tap path here"
        textField.delegate = self
        
        subView.addTarget(self, action: #selector(deeplinkToRaif), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            subView.heightAnchor.constraint(equalToConstant: 50),
            subView.widthAnchor.constraint(equalToConstant: 300),
            subView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            textField.widthAnchor.constraint(equalToConstant: 200),
            textField.heightAnchor.constraint(equalToConstant: 40),
            textField.topAnchor.constraint(equalTo: subView.bottomAnchor, constant: 30),
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc
    private func deeplinkToRaif() {
//        guard let url = URL(string: "ronline://\(pathTo)") else { return }
//        if UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url)
//        }
        FLEXManager.shared.showExplorer()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        pathTo = textField.text ?? ""
    }
}
