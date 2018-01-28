//
//  ViewControllerQ2.swift
//  FitMate
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 Team Alabama. All rights reserved.
//

import UIKit

class ViewControllerQ2: UIViewController, UITextFieldDelegate {
    
    var newUser = userData()


    // BUTTONS
    
    @IBOutlet weak var Sunday: UIButton!
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Wednesday: UIButton!
    @IBOutlet weak var Thursday: UIButton!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Saturday: UIButton!
    
    @IBAction func SundayAction(_ sender: UIButton) {
        if Sunday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Sunday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Sunday")
        }
        else{
            Sunday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Sunday")
        }
    }
    
    @IBAction func MondayAction(_ sender: UIButton) {
        if Monday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Monday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Monday")
        }
        else{
            Monday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Monday")
        }
    }
    
    @IBAction func Tuesday(_ sender: UIButton) {
        if Tuesday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Tuesday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Tuesday")
        }
        else{
            Tuesday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Tuesday")
        }
    }
    
    @IBAction func WednesdayAction(_ sender: UIButton) {
        if Wednesday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Wednesday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Wednesday")
        }
        else{
            Wednesday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Wednesday")
        }
    }
    
    @IBAction func ThursdayAction(_ sender: UIButton) {
        if Thursday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Thursday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Thursday")
        }
        else{
            Thursday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Thursday")
        }
    }
    
    
    @IBAction func FridayAction(_ sender: UIButton) {
        if Friday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Friday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Friday")
        }
        else{
            Friday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Friday")
        }
    }
    
    @IBAction func SaturdayAction(_ sender: UIButton) {
        if Saturday.backgroundColor == UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1){
            Saturday.backgroundColor = UIColor.green
            // add to array
            newUser.setDaysAvailable(answer: "Saturday")
        }
        else{
            Saturday.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
            // remove from array
            newUser.removeFromDays(answer: "Saturday")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("question 2 screen")
        newUser.printAll()
        
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func nextScreen(_ sender: UIButton) {
        newUser.combineDays()
        newUser.printDays()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewControllerQ3 = segue.destination as? ViewControllerQ3 {
            ViewControllerQ3.newUser = self.newUser
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
