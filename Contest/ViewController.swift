//
//  ViewController.swift
//  Contest
//
//  Created by Warren Whitcher on 12/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let text = emailTextField.text, !text.isEmpty {
            performSegue(withIdentifier: "ToContest", sender: nil)
        } else {
            shakeTextField()
        }
    }
    
    func shakeTextField() {
        UIView.animate(withDuration: 0.3, animations: {
            let translationRight = CGAffineTransform(translationX: 20, y: 0)
            self.emailTextField.transform = translationRight
        }) { (_) in
            UIView.animate(withDuration: 0.4, animations: {
                let translationLeft = CGAffineTransform(translationX: -20, y: 0)
                self.emailTextField.transform = translationLeft
            }, completion: { (_) in
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }
}

