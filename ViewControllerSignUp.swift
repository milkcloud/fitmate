//
//  ViewControllerSignUp.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerSignUp: UIViewController, UITextFieldDelegate {
    
    var newUser  = userData()
    
    // userInput for class
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var genderText: UITextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.keyboardType = UIKeyboardType.numberPad
        
        // Do any additional setup after loading the view.
        
        firstNameText.delegate = self
        lastNameText.delegate = self
        emailText.delegate = self
        passwordText.delegate = self
        phoneNumber.delegate = self
        dateOfBirth.delegate = self
        genderText.delegate = self
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
        newUser.setUserEmail(setEmail: emailText.text!)
        newUser.setGender(gender: genderText.text!)
        
        let userName = firstNameText.text! + " " + lastNameText.text!
        print(userName)
        newUser.setUserName(setName: userName)
        newUser.setUserPassword(password: passwordText.text!)
        newUser.setUserNumber(number: Int(phoneNumber.text!)!)
        newUser.setBirthday(date: dateOfBirth.text!)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerTransition = segue.destination as? ViewControllerTransition {
            ViewControllerTransition.newUser = self.newUser
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
