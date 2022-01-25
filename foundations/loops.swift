import Foundation


let name:String = "This is gonna repeat 10 times"

print("========")
print("For Statement")

for i in 0...9 {
    print(name, i)
}

var i:Int = 0

print("========")
print("While Statement")

while i < 10 {
    print(name, i)
    i += 1
}

print("========")
print("Do/While Statement")

i = 0

repeat {
    print(name, i)
    i += 1
} while i < 10