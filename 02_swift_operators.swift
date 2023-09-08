// ARITHMETIC OPERATORS
// - (unary) for negation
// + Addition
// - Subtraction
// * Multiplication
// / Division
// % Modulo


// COMPARISON OPERATORS between Numeric Operands
// ==
// >
// >=
// <
// <=
// !=


// BOOLEAN OPERATORS between Boolean Operands
// !  - NOT
// && - AND
// || - OR
var isLoggedIn:Bool = false
isLoggedIn = !isLoggedIn
print(isLoggedIn)

var a:Bool = true;
var b:Bool = false;
print(a || b)
print(a && b)
print((100>99) && (9<=100))


// CLOSED RANGE OPERATOR: a...b
// ONE-SIDED RANGE OPERATOR: a... or ...b
// 1...10 // this is equal to 1,2,3,4,5,6,7,8,9,10


// TERNARY OPERATION
// condition ? value_for_true_result : value_for_false_result
var a:Int = 30
var b:Int = 40
print("The smallest number is \(a<b ? a : b)")


// NIL COALESCING OPERATOR: ??
// nil - Latin word which means nothing
// The nil coalescing operator automatically unwraps
// the optional if it is not equal to nil.
let fileName:String? = nil
print("File open: \(fileName ?? "file is empty")")

let userName:String? = "Anonymous"
print("Hello \(userName ?? "Random Customer")")
