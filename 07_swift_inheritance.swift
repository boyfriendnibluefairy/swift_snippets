
class Person {    // Assume this is the super class
    var firstName: String = "Aegon"
    var lastName: String = "Targaryen"
    var bankSavings: Float = 1000.0
    
    init(firstName: String, lastName: String, bankSavings: Float)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.bankSavings = bankSavings
    }
    func displaySavings()
    {
        print("NAME: \(firstName) \(lastName)")
        print("BANK SAVINGS: \(bankSavings)")
    }
}



class Scholar : Person {    // Consider Scholar which inherits from Person
    var tuitionFee: Float = 100
    
    init(firstName:String, lastName:String, bankSavings:Float, tuitionFee:Float)
    {
        self.tuitionFee = tuitionFee
        // super.init() must be called AFTER subclass initialization
        super.init(firstName:firstName,
                   lastName:lastName,
                   bankSavings:bankSavings)
    }
    func calculateSavings() -> Float
    {
        return (bankSavings - tuitionFee)
    }
    override func displaySavings() {
        super.displaySavings()
        print("Latest Tuition Fee: \(tuitionFee)")
    }
}

let scholar1 = Scholar(firstName:"Baelon",
                       lastName:"Targaryen",
                       bankSavings: 3000,
                       tuitionFee: 100)
print(scholar1.calculateSavings())
scholar1.displaySavings()
