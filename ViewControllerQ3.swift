//
//  ViewControllerQ3.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ3: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Morning: UIButton!
    @IBOutlet weak var Afternoon: UIButton!
    @IBOutlet weak var Evening: UIButton!
    @IBOutlet weak var Night: UIButton!
    
    @IBAction func MorningAction(_ sender: UIButton) {
        if Morning.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Morning.backgroundColor = UIColor.green
            // add to array
            newUser.setTimeAvailable(answer: "Morning")
        }
        else{
            Morning.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeTimeAvailable(answer: "Morning")
        }
        
    }
    
    @IBAction func AfternoonAction(_ sender: UIButton) {
        if Afternoon.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Afternoon.backgroundColor = UIColor.green
            // add to array
            newUser.setTimeAvailable(answer: "Afternoon")
        }
        else{
            Afternoon.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeTimeAvailable(answer: "Afternoon")
        }
    }
    
    @IBAction func EveningAction(_ sender: UIButton) {
        if Evening.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Evening.backgroundColor = UIColor.green
            // add to array
            newUser.setTimeAvailable(answer: "Evening")
        }
        else{
            Evening.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeTimeAvailable(answer: "Evening")
        }
    }
    
    @IBAction func NightAction(_ sender: UIButton) {
        if Night.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Night.backgroundColor = UIColor.green
            // add to array
            newUser.setTimeAvailable(answer: "Night")
        }
        else{
            Night.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeTimeAvailable(answer: "Night")
        }
    }
    
    var newUser = userData()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newUser.printAll()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func nextScreen(_ sender: UIButton) {
        newUser.combineTimeAvailable()
        newUser.printTimes()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ4 = segue.destination as? ViewControllerQ4 {
            ViewControllerQ4.newUser = self.newUser
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
