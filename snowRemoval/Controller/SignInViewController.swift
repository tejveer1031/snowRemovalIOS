//
//  SignInViewController.swift
//  snowRemoval
//
//  Created by TEJVEER SINGH on 2022-04-03.
//

import UIKit
import Firebase
class SignInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emilTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginInButton(_ sender: UIButton) {
        let email = emilTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            if let e = error{
                print(e.localizedDescription)
            }else{
                self.performSegue(withIdentifier: "LoginToHome", sender: self)
            }
          // ...
        }
    }
    @IBAction func createAccoutPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
