//
//  userData.swift
//  ViewControllerOperation
//
//  Created by John Fu on 1/20/18.
//  Copyright © 2018 John Fu. All rights reserved.
//

import Foundation
class userData{
    var userName = ""
    var userEmail = ""
    var userPassword = ""
    var userGender = ""
    var userNumber = 0
//
//    struct dateOfBirth{
//        var month = 0
//        var day = 0
//        var year = 0
//    }
    
    var userBirthday = " "
    
   // var userBirthday = dateOfBirth()
    
    
    var description = ""
    var weight = 0
    var favoriteExcercise = Set<String>()
    var daysAvailable = Set<String>()
    var timeAvailable = Set<String>()
    
    var favoriteExerciseAsString = ""
    var daysAvailableAsString = ""
    var timeAvailableAsString = ""
    
    init(){
        
    }
    
    func setUserNumber(number : Int ){
        userNumber = number
    }
    
    func setUserName(setName : String ){
        userName = setName
    }
    
    func setUserEmail(setEmail : String ){
        userEmail = setEmail
    }
    
    func setUserPassword(password : String )
    {
        userPassword = password
    }
    
    func setGender(gender : String){
        userGender = gender
    }
    
//    func setBirthday(day : Int, month : Int, year : Int)
//    {
//        userBirthday.day = day
//        userBirthday.month = month
//        userBirthday.year = year
//    }
    func setBirthday(date: String)
    {
        userBirthday = date
    }
    
    func setWeight(answer : Int){
         weight = answer
    }
    func setDaysAvailable(answer : String){
        daysAvailable.insert(answer)
    }
    func removeFromDays(answer: String){
        if(daysAvailable.contains(answer))
        {
            daysAvailable.remove(answer)
        }
    }
    
    func combineDays()
    {
        for i in daysAvailable{
            daysAvailableAsString += i + ""
        }
    }
    func setTimeAvailable(answer : String){
        timeAvailable.insert(answer)
    }
    
    func removeTimeAvailable(answer: String)
    {
        if(timeAvailable.contains(answer))
        {
            timeAvailable.remove(answer)
        }
    }
    
    func combineTimeAvailable(){
        for i in timeAvailable{
            timeAvailableAsString += i + " "
        }
        
    }
    func setExcercise(answer : String){
        favoriteExcercise.insert(answer)
    }
    func removeFromExcercise(answer: String){
        if(favoriteExcercise.contains(answer)){
            favoriteExcercise.remove(answer)
        }
    }
    
    func setDescription(answer: String)
    {
        description = answer
    }
    
    func convertExcercise()
    {
        for i in favoriteExcercise{
            favoriteExerciseAsString += i + " "
        }
    }
    
    func printUserName()
    {
        print(userName)
    }
    func printUserEmail()
    {
        print(userEmail)
    }
    
    func printExcercise()
    {
        for i in favoriteExcercise{
            print("user favorite excercise: ", i)
        }
    }
    func printDays()
    {
        for i in daysAvailable{
            print("users days: ", i)
        }
    }
    func printTimes()
    {
        for i in timeAvailable{
            print("users times: ", i)
        }
    }
    
    
    func printAll()
    {
        print("username: ", userName)
        print("useremail: ", userEmail)
        print("user password: ",userPassword)
        print("user Gender: ", userGender)
       //print(userBirthday.day,userBirthday.month,userBirthday.year)
        print("user birthday: ", userBirthday)
        print("user phone Number: ", userNumber)
        print("user weight: ", weight)
        print("user description: ",  description)
        for i in favoriteExcercise{
            print("user favorite excercise: ", i)
        }
        
        
        for i in daysAvailable{
            print("user days available: ", i)
        }
        
        for i in timeAvailable{
            print("user time available: ", i)
        }
}
}
