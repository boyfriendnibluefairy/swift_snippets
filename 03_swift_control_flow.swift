// FOR-IN LOOP SYNTAX
// for variable in range or collection {
//    // insert code here
// }
for i in -3...0 {
    print("value of i is: \(i)")
}

// If index is not in use, replace it with "_"
var counter:Int = 0
for _ in 1...3 {
    // reference of current index is not important
    counter += 1
}
print("=========")


// WHILE LOOP SYNTAX
// while condition {
//    // insert code here
// }
var j:Int = 0
while j < 9 {
    print("j = \(j)")
    j += 1
}
print("=========")


// REPEAT WHILE LOOP SYNTAX
// repeat {
//    // insert code here
// } while condition
var k = 0
repeat {
    print("k = \(k)")
    k -= 1
} while k > -10
print("=========")


// BREAK FROM LOOPS
var x:Int = 0
for _ in 0...30 {
    x += 1
    if x > 10 { break }
    print("x = \(x)")
}
print("=========")


// CONTINUE LOOP
var y:Int = 0
while y < 30 {
    y += 1
    if y%2 != 0 {
        continue
    }
    print("y = \(y)")
}
print("=========")


// IF STATEMENT
// if condition {
//    // insert code here
// }
let z:Int = 1
if z < 100 { print("z = \(z)") }
print("=========")


// IF ELSE STATEMENT
// if condition {
//    // insert code here
// } else {
//    // insert code here
// }
let i:Int = 1
if i < 1 {
    print("i is less than 1")
} else {
    print("i is greater than or equal to 1")
}
print("=========")


// GUARD STATEMENT FOR EARLY EXIT STRATEGY
// Unlike regulaar if statement, the unwrapped value
// in guard statements are still accessible outside the
// guard curly braces.
// SYNTAX:
// guard condition else {
//    // execute this body if condition result is false
//    // provide exit statement here like
//    // break, continue, return, throw
// }
// // execute this line if condition result is true
func multiplyByTwo(val: Int?){
    guard let j = val, j < 100 else {
        print("The number is too high or you did not input a numeric value.")
        return
    }
    let product = j * 2
    print(product)
}
multiplyByTwo(val: 10)
print("=========")
multiplyByTwo(val: 1000)
