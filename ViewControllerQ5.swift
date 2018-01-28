//
//  ViewControllerQ5.swift
//  FitMate
//
//  Created by John Fu on 1/21/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ5: UIViewController, UITextFieldDelegate {

    var newUser = userData()
    
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightTextField.delegate = self
        // Do any additional setup after loading the view.
        
        weightTextField.keyboardType = UIKeyboardType.numberPad
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextScreen(_ sender: UIButton) {
        
        newUser.setWeight(answer : Int(weightTextField.text!)!)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerPhoto = segue.destination as? ViewControllerPhoto {
            ViewControllerPhoto.newUser = self.newUser
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
