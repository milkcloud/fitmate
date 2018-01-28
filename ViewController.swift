//
//  ViewController.swift
//  FitMate
//
//  Created by Andrew Vo on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newUser = userData()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpView(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerSignUp = segue.destination as? ViewControllerSignUp {
            ViewControllerSignUp.newUser = self.newUser
        }
    }
}

