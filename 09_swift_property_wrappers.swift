@propertyWrapper
struct LowerCase {
    private(set) var value:String = ""
    
    init(wrappedValue initialValue:String)
    {
        self.wrappedValue = initialValue
    }
    var wrappedValue: String {
        get { value }
        set { value = newValue.lowercased() }
    }
}
/**
 Property Wrapper is a generic structure that encapsulates getters and setters for a property
 and allows addition of other computations and behavior to it. By putting the code outside a class or
 structure, it also allows code reusability
 */
struct BusinessCard {
    @LowerCase var fullName:String
    @LowerCase var officeAddress:String
}

var entrepreneur1 = BusinessCard(fullName:"Elon Musk",
                                 officeAddress:"Palo Alto, California")
print(entrepreneur1.fullName)
print(entrepreneur1.officeAddress)
print("=========")


// ANOTHER EXAMPLE
@propertyWrapper
struct RestrictRange {
    var value:Int
    let min:Int
    let max:Int
    
    init(wrappedValue:Int, min:Int, max:Int)
    {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    var wrappedValue: Int {
        get { return value }
        set {
            if newValue > max {
                value = max
                
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct DataForMachineLearning {
    @RestrictRange(min:1, max:100) var value:Int = 100
}

var experimentalData = DataForMachineLearning()
experimentalData.value = -1
print(experimentalData.value)
experimentalData.value = 5_000_000
print(experimentalData.value)
experimentalData.value = 33
print(experimentalData.value)
