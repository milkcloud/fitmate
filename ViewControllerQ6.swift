//
//  ViewControllerQ6.swift
//  FitMate
//
//  Created by John Fu on 1/21/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ6: UIViewController,     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let ViewControllerC = segue.destination as? ViewControllerC {
        ViewControllerC.newUser = self.newUser
    }
} {
    
    var newUser = userData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
