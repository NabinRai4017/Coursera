class Calculator{
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0{
            throw CalculatorError.divisionByZero
        }
        return x/y
    }
    
}

enum CalculatorError: Error{
    case divisionByZero
}

let calculator = Calculator()



do{
    let successfulRresult = try calculator.divide(x: 0, y: 1)
    print("Success \(successfulRresult)")
}
catch CalculatorError.divisionByZero{
    print("Division by zero")
}
catch {
    print(error)
}

//defer
func example() {
    
    
    defer {
        print("This is the last message")
    }


    print("This is the first message")
}


example()


let file = open("file.txt")


do {
    defer {
        file.close()
    }
 
//    let result = try readFile(file)
} catch {
    // Handle errors here
}
