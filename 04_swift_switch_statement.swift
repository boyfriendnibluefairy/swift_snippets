
let temperature:Int = 33
    // fallthrough is commented out because
    // its use is problematic to our logic
switch temperature {
case 0:
    print("The temperature is zero kelvin")
case 1,2,3:
    print("The temperature is either 1,2, or 3 kelvin")
case 4...36 where temperature % 2 != 0:
    //fallthrough
    print("The temperature is cold and odd.")
case 37...99 where temperature % 2 != 0:
    print("The temperature is warm and odd.")
case 4...36 where temperature % 2 == 0:
    //fallthrough
    print("The temperature is cold and even.")
case 37...99 where temperature % 2 == 0:
    print("The temperature is warm and even.")
case 100:
    print("You have reached the boiling point.")
default:
    print("The input temperature is invalid or out of range.")
}
