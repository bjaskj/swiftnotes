////
// tuples
var myDog = (42, "Doge", true)

myDog.2 // true

var myDog = (age: 42, name: "Doge", isAFemale: true)

myDoge.age

// expand tuple
var (age, name, isAFemale) = myDog

// only take name
var (_, name, _) = myDoge

////
// Optionals
var dogAge = "123".toInt()

if dogAge {
    dogAge! // to use it, must validate it first
}

//

var dogAge: Int?
dogAge = 12
dogAge = nil

////
// Numeric Literals
var dogWeight = 1_000_000
var dogWeight = 1_000_000.301_033

////
// Numeric type conversion
var pi = 3 + 0.14159

var aIntVariable = 3
var aDoubleVariable = 0.14159
var pi = Double(aIntVariable) + aDoubleVariable

var intPi = aIntVariable + Int(aDoubleVariable)

/////////////////////////////
// Basic Operators

////
// Assignment
var dogName = "Ralph"
dogName = "Sean"
let dogNameB = "Lucky"

////
// Increment and Decrement

var dogAge = 0
++dogAge
++dogAge

--dogAge
--dogAge

// --dogAge = update before returning value
// dogAge-- = update after returning value

////
// Ternary Conditional Operator
dogName = isAFemale ? "Sarah" : "Ralph"

////
// Range Operators

// 1,2,3,4,5
for dogAge in 1...5 {
    println("The dog is \(dogAge) years old")
}

// 1,2,3,4
for dogAge in 1..5 {
    println("The dog is \(dogAge) years old")
}

/////////////////////////////
// Strings and Characters
var dogName = "Fido"
var dogQuote = "My dog said\"Hello sir!\""

// init empty string
var dogName = ""
var dogNickName = String()

if dogName.isEmpty {
}

// mutability
let dogName = "Fido" // cannot be changed
var dogName = "Fido" // can change

// Strings are value types, not pointers

func printDogName(name: String){
    println(name)
}

var dogName = "Fido"
printDogName(dogName) // gets a copy of the value

////
// Characters
var dogName = "Fido"
for character in dogName {
    println(character)
}

////
// Counting characters
var dogName = "Fido"
countElements(dogName)

////
// Comparing strings

var string1 = "Fido"
var string2 = "fido"

if string1.hasPrefix("Fi") {
    "It's a match"
}

// Also:
// hasSuffix
// uppercaseString
// lowercaseString

/////////////////////////////
// Collection Types

// Arrays
var dogNames: Array<String>
var dogNames: String[] //recommended

// Array Literals
var dogNames = ["Fido", "Lucky"]
var dogAges = [1,3,4,6]

// Accessing and Modifying an Array
var dogNames = ["Fido", "Sean", "Marcus"]
dogNames.isEmpty
dogNames.count

dogNames += "Sarah"
dogNames += ["Sarah", "Parker"]

dogNames[0] // first item
dogNames[1] = "Seanick"

dogNames[2...4] = ["a","b","c"]
dogNames[2...4] = ["a"] // item 3 and 4 gets deleted

dogNames.insert("Parker", atIndex: 1)
dogNames.removeAtIndex(1)
dogNames.removeLast()

// Iterating over an array
var dogNames = ["Fido", "Sean", "Marcus"]

for dogName in dogNames {
    println("The dog's name is \(dogName)"
}

for (index, dogName) in enumerate(dogNames) {
    println("Dog \(index) is named \(dogName)")
}

// Creating and Initializing an Array
var dogNames = String[]()

if dogNames.isEmpty {
    "yep"
}

//
var dogNames = Array(count: 5, repeatedValue: "Fido")
//

var femaleDogNames = ["Jenna", "Sarah"]
var maleDogNames = ["Fido", "Ol Yeller"]

var dogNames = femaleDogNames + maleDogNames

// Dictionaties
var dogAges: Dictionary<String, Int>

// Dictionary Literals
var dogAges: Dictionary<String, Int>
dogAges = ["Fido": 5, "Fido": 12]

var dogAges = ["Fido": 5, "Fido": 12]

// Accessing and Modifying a Dictionary
var dogAges = ["Fido": 5, "Fido": 12]
dogAges["Fido"] = 15
dogAges.updateValue(15, forKey: "Fido")

var fidoAge = dogAges["Fido"] // returns as optional

dogAges["Fido"] = nil // deletes it
dogAges.removeValueForKey("Fido") // returns value we deleted

// Iterating over a dictionary
var dogAges = ["Fido": 5, "Fido": 12]

for (dogName, dogAge) in dogAges {
    println("\(dogName) is \(dogAge) years old")
}

for dogName in dogAges.keys {
}

for dogAge in dogAges.values {
}

var dogNames = Array(dogAges.keys)

// Creating an Empty Dictionary
var dogAges: Dictionary<String, Int>()
dogAges["Fido"] = 8

dogAges = [:] // creates empty

/////////////////////////////
// Control Flow

// For-In Loops

var dogNames = ["Fido", "Lucky"]

for dogName in dogNames {
}
//
var dogAges = ["Fido": 3, "Lucky": 4]

for (dogName, dogAge) in dogAges {
}
//
for index in 1...5 {
    // 1,2,3,4,5
}
//
for index in 1..5 {
    // 1,2,3,4
}
//
var maxIndex = 7
for index in 1...maxIndex {
    // 1,2,3,4,5,6,7
}

// For-Conditional-Increment Loops
for var i = 0; i < 7; i++ {
}

// While Loops

var dogAge = 8

while dogAge < 15 {
}

do {
} while dogAge < 15

// Switch Statements
var dogName = "Fido"

switch dogName {
    case "Sean":
        "The dog is one"
    case "Fido":
        "The dog is two"
    default:
        "The dog... is a dog"
}

// Switch Statements and Tuples
var dogInfo = (8, "Fido")

switch dogName {
    case (5, "Sean"):
        "The dog is one"
    case (8, "Fido"):
        "The dog is two"
    case (7, _):
        "He's age 7"
    case (1...10, _):
        "Dog is from 1 to 10 years old"
    default:
        "The dog... is a dog"
}

// Value Bindings
var dogInfo = (8, "Fido")

switch dogName {
    case (var age, "Fido"):
        "My dog Fido is \(age) years old!"
    case (5, var name):
        "My dog \(name) is 5 years old!"
    case (var age, var name):
        "My dog \(name) is \(age) years old!"
}

// Where Clause
var dogInfo = (8, "Sean")

switch dogName {
    case (var age, var name) where age > 5:
        "My dog \(name) is \(age) years old!"
    case (var age, var name) where name == "Fido":
        "My dog \(name) is \(age) years old!"
}    case (var age, var name):
        "My dog \(name) is \(age) years old!"
}}
