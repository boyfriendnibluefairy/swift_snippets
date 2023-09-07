//print("Int8 min = \(Int8.min) \nInt8 max = \(Int8.max)")
//var myNumber:Int = 13
//print(myNumber)

//var myFloat:Float16 = 3
//print(myFloat)

//var isAwesome:Bool = true
//var isBoring:Bool = false
//print(isBoring)
//print(isAwesome)

//var myChar:Character = "a"
//print(myChar)

//// STRING INTERPOLATION
//var userName:String = "Angel"
//var driveSpace:Int = 123
//let maxLimit = 300
//var message:String = "\(userName) has \(driveSpace) GB space. Drive capacity remaining is \(maxLimit - driveSpace) GB"
//print(message)

//// MULTILINE STRING LITERALS (observe indentation rules)
//var myParagraph:String = """
//
// "I thought we were in love?" yelled Janelle.
//   "I love you."
// Two strangers keep on waiting for each other.
//
// """
//print(myParagraph)

//// ESCAPE CHARACTER
//let newline:Character = "\n"
//let backslash:Character = "\\"
//print("\"hello \(newline) world with newline.\"")
//print("this is a \'backslash\': \(backslash)")

// TUPLE ASSIGNMENT AND HOW "_" can be used to ignore other values
let firstTuple = (count: 3, width: 6.0, message: "reparo spell")
print(firstTuple.width)
var (n, _, secret_spell) = firstTuple
print(secret_spell)
