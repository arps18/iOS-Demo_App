//
//  ViewController.swift
//  a1
//
//  Created by Arpan Patel on 5/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonClickMe: UIButton!
    @IBOutlet var textFieldUSer: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonClickMe.addTarget(self, action: #selector(onButtonClickMeTapped), for: .touchUpInside)
    }
    
    @objc func onButtonClickMeTapped(){
        let text = textFieldUSer.text
        if let unwrappedText = text{
            if unwrappedText.isEmpty{
                showErrorAlert()
            }
            else{
                showTextAlert(text:unwrappedText)
            }
        }
        
    }
    
    func showErrorAlert(){
        let alert = UIAlertController(title: "Error!", message: "Text field can't be empty!", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert,animated:true)
    }
    
    func showTextAlert(text:String){
        let alert = UIAlertController(title: "You said:", message: "\(text)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert,animated:true)
    }


}

