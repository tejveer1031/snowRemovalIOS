//
//  LauncherViewController.swift
//  snowRemoval
//
//  Created by TEJVEER SINGH on 2022-04-04.
//

import UIKit

class LauncherViewController: UIViewController {

    @IBOutlet weak var LancherTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let titleText = LancherTitle.text!
        LancherTitle.text = ""
        var charIndex = 0
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) {(timer) in
                self.LancherTitle.text?.append(letter)
            }
           charIndex += 1
        }
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) {
            (timer)in
            self.performSegue(withIdentifier: "GoToTabBar", sender: self)
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToTabBar"{
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
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
