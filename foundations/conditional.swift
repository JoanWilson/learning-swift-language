import Foundation

var idade:Int = 0

if (idade >= 1) && (idade < 12)  {
    print("You're a kid")
} else if (idade >= 12) && (idade < 18) {
    print("You're an adolescent")
} else if (idade >= 18) && (idade < 60) {
    print("You're an adult")
} else if idade >= 60 {
    print("You're an elderly person")
} else {
    print("You're newborn")
}