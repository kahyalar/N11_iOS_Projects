//: Playground - noun: a place where people can play

import UIKit

class Functions {
    
    //Function 1-) Write a function that returns tuple.
    func getStudentInfo(studentNumber: String) -> (String, String){
        var studentName = ""
        var studentSurname = ""
        
        if studentNumber == "123456789"{
            studentName = "Furkan"
            studentSurname = "Kahyalar"
        }
        else {
            studentName = "Öğrenci"
            studentSurname = "Bulunamadı"
        }
        
        return (studentName, studentSurname)
    }
    
    //Function 2-) Write a function that returns tuple with parameter labels.
    func getPersonalInfo(idNumber: String) -> (name: String, surname: String){
        var name = ""
        var surname = ""
        
        if idNumber == "123456789"{
            name = "Furkan"
            surname = "Kahyalar"
        }
            
        else {
            name = "Kişi"
            surname = "Bulunamadı"
        }
        
        return (name, surname)
    }
    
    
    //Function 3-) Write switch control that checks a tuple values and executes different cases.
    func rgbToColor(color: (Int, Int, Int)) -> (){
        switch color {
        case let (r, g, b) where r == 255 && g == 0 && b == 0:
            print("Red")
        case let (r, g, b) where r == 0 && g == 255 && b == 0:
            print("Green")
        case let (r, g, b) where r == 0 && g == 0 && b == 255:
            print("Blue")
        default:
            print("What was that !?")
        }
    }
    
    //Function 4-) Put the tuple type into typealias and use it in a function while returning.
    typealias Time = (hour: Int, minute: Int)
    func getCurrentTime() -> Time {
        return (09, 05)
    }
    
    //Task 5-) Create an array with 5 elements.
    var citiesOfEstonia: [String] = ["Tallinn", "Tartu", "Narva", "Valga", "Haapsalu"]
    
    //Function 6-) Loop over the created array and process the elements using for loop.
    func printCitiesOfEstonia() -> () {
        for (index, city) in citiesOfEstonia.enumerated(){
            print("\(index+1)-) \(city)")
        }
    }
    
    
    
}

/*
 * TESTS
 */
let functions = Functions()

// Function 1 - TEST
functions.getStudentInfo(studentNumber: "123456789")
functions.getStudentInfo(studentNumber: "666")

// Function 2 - TEST
functions.getPersonalInfo(idNumber: "123456789")

// Function 3 - TEST
functions.rgbToColor(color: (255, 0, 0))
functions.rgbToColor(color: (0, 255, 0))
functions.rgbToColor(color: (0, 0, 255))
functions.rgbToColor(color: (0, 0, 0))

// Function 4 - TEST
functions.getCurrentTime()

// Task 5 - TEST
print(functions.citiesOfEstonia.count)

// Function 6 - TEST
functions.printCitiesOfEstonia()