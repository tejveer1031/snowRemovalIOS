//
//  SignUpViewController.swift
//  snowRemoval
//
//  Created by TEJVEER SINGH on 2022-04-03.
//

import UIKit
import Firebase
class SignUpViewController: UIViewController {

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpPresse(_ sender: UIButton) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        if(password == confirmPassword.text!){
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
            }else{
                //navigate to chat view controller
                self.performSegue(withIdentifier: "GoToHomeFromSignUp", sender: self)
            }
        }
        }
    }
    
    @IBAction func alreadyPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
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
