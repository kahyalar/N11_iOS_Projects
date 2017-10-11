import UIKit

class Functions {

    //Function 1-) Write two functions that overload of each others
    func doSomething(done:String) -> Void {
        print((done)+" -> Done!")
    }

    func doSomething(done: Bool) -> Void {
        print("Status: \(done)")
    }
    
    //Function 2) Write a function which has default parameter value
    func drink(whatToDrink: String, water :String = "Water"){
        print("Drinking: \(whatToDrink) with \(water)")
    }
    
    //Function 3) Write a function which has one paremeter and one variadic parameter
    func order(waiter: String, orders: String ...){
        print("Waiter: \(waiter) -> Orders: \(orders)")
    }
    
    //Function 4) Write a function which has ignored external parameter name.
    func areWeClear(_ status: Bool){
        print("-Are We Clear ? +\(status)")
    }
    
    //Function 5) Write a function inside a function.
    func buyAlcohol(age: Int){
        func isEligible() -> Bool{
            if age > 18 {
                return true
            }
            else{
                return false
            }
        }
        if isEligible() {
            print("You can buy alcohol!")
        }
        else{
            print("You can't buy alcohol")
        }
    }
    
    //Function 6) Write a recursive function.
    func countDown(_ start: Int){
        print(start)
        if start > 0 {
            countDown(start-1)
        }
    }
    
    //Function 7) Write typealias for a function type which has different parameter types.
    typealias Counter = (String) -> (Int)
    
    //Function 8) Pass function as a value to another function.
    let counter: Counter = { (item: String) -> Int in
        let str: String  = item
        return str.characters.count
    }
    
    func count(_ textToCount: String, _ op:Counter){
        print("Text is: \(textToCount)")
        let result = op(textToCount)
        print("Result is: \(result)")
    }
    
}

let functions = Functions()

/*
 * TESTS
 */

// Function 1 - TEST
functions.doSomething(done: true)
functions.doSomething(done: "Coding with Swift!")

// Function 2 - TEST
functions.drink(whatToDrink: "Turkish Raki")
functions.drink(whatToDrink: "Turkish Raki", water: "Mineral Water")

//Function 3 - TEST
functions.order(waiter: "Furkan", orders: "Tea", "Coffee", "Milk")

//Function 4 - TEST
functions.areWeClear(true)

//Function 5 - TEST
functions.buyAlcohol(age: 20)
functions.buyAlcohol(age: 1)

//Function 6 - TEST
functions.countDown(3)

//Function 7 & 8 - TEST
typealias Counter = (String) -> (Int)
let counter: Counter = { (item: String) -> Int in
    let str: String  = item
    return str.characters.count
}
functions.count("Merhaba Dünya", counter)

