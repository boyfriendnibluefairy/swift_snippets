//// CLASS DECLARATION SYNTAX
//class ChildClass : ParentClass {
//    // properties
//    // instance methods
//    // type methods
//}
class Person {
    var firstName : String = "Pedro"
    var lastName : String = "Penduko"
    var age : Int = 33
    var bankSavings: Float = 1000.0
    var bankCredits: Float = 23.0
    // During instantiation, properties must be initilized
    init(firstName: String, lastName:String, age: Int)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    // Before an instance is destroyed, its properties must be cleaned up
    deinit
    {
        // code for clean up
    }
    // instance methods - operate on instances of a class
    func displayFullName()
    {
        print("FULL NAME: \(firstName) \(lastName)")
    }
    // type methods - operate at class level
    class func isAllowedToOwnRealEstate() -> Bool
    {
        return false
    }
    // implement computed properties through getter and setter methods
    var netBalance: Float {
        get {
            return (bankSavings - bankCredits)
        }
        set(newBalance) {
            bankSavings = newBalance - bankCredits
        }
    }
}

// Instantiate a class
var user1 = Person(firstName: "Aegon", lastName: "Targaryen", age:33)

// Accesing properties
var user1_age = user1.age

// Calling instance method
print("FULL NAME: \(user1.firstName) \(user1.lastName)")

// Set values of instance properties
user1.firstName = "Daemon"
user1.displayFullName()

// Calling a type method
// example: ClassName.typeMethod()
print(Person.isAllowedToOwnRealEstate())

// test getter and sette functions
print(user1.netBalance)
user1.netBalance = 3000
print(user1.netBalance)

// note: lazy keyword is used to declare a variable and tell the
// compiler that the variable will only be initialized when it is first
// accessed.
