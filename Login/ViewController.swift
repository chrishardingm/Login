//
//  ViewController.swift
//  Login
//
//  Created by Chris Harding on 9/29/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let destination = segue.destination
        //destination.title = userName.text
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func pressForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: sender)
    }
  
    @IBAction func pressForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: sender)
    }
    
}

