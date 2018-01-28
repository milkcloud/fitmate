//
//  ViewControllerQ1.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ1: UIViewController,  UITextFieldDelegate {
    
    var newUser  = userData()

    @IBOutlet weak var bioTextInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioTextInput.delegate = self

        // Do any additional setup after loading the view.
        newUser.printAll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func nextScreen(_ sender: UIButton) {
        newUser.setDescription(answer: bioTextInput.text!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ2 = segue.destination as? ViewControllerQ2 {
            ViewControllerQ2.newUser = self.newUser
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
