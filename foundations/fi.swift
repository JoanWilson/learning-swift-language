import Foundation

//Messages
let welcomeMsg:String = #"""
==================================
Welcome to the BANK, please choose an Option

1 - Balance
2 - Deposit
3 - Withdraw
0 - Exit
==================================

"""#

let hash:String = "=================================="

let typeOperation:String = "Type your operation: "

let balanceMsg:String = #"Your balance is "#

let howMuch:String = "Amount Value: "

//Variables
var operation:Int = 0
var balance:Float = 0
var reader:String = "empty"

//Extensions
extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

//Main Code
repeat {
    print(welcomeMsg)
    print(typeOperation)
    reader = readLine()!
    operation = Int(reader)!
    system("clear")

    switch operation {
        case 1:
            print(hash)
            print("Balance")
            print(hash)
            print(balanceMsg, balance)
        case 2:      
            print(hash)
            print("Deposit")
            print(hash)
            print(balanceMsg, balance)
            print(hash)
            print(howMuch)
            reader = readLine()!
            let addValue = Float(reader)!
            balance = add(amount: addValue,balance: balance)
            print(hash)
            print(balanceMsg, balance)
        case 3:
            print(hash)
            print("Withdraw")
            print(hash)
            print(balanceMsg, balance)
            print(hash)
            print(howMuch)
            reader = readLine()!
            let addValue = Float(reader)!
            balance = remove(amount: addValue,balance: balance)
            print(hash)
            print(balanceMsg, balance)
        case 0:
            print("Good Bye!")
        default:
            print("Invalid operation number!")

    }
    
} while operation != 0

//Functions
func add(amount value:Float, balance balValue:Float) -> Float {
    let total:Float = value + balValue
    return total
}

func remove(amount value:Float, balance balValue:Float) -> Float {
    let total:Float = balValue - value
    return total
}