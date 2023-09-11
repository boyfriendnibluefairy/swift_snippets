
func convertWaveLength(_ waveLength_nm:Float)
-> (waveNumber_cm_1:Float, frequency_Hz:Float){
    let waveNumber_cm_1 = 10_000_000 / waveLength_nm
    let frequency_Hz = 300_000_000*10_000_000_000 / waveLength_nm
    return (waveNumber_cm_1, frequency_Hz)
}

// The underscore "_" in the declaration means the external parameter name
// can be ommitted during function call; the user can directly write
// the argument values without the parameter names.
// parameter - term used for function declaration
// argument - term used for function call
let convertedValues = convertWaveLength(550)


print(convertedValues.waveNumber_cm_1)
print(convertedValues.frequency_Hz)


// VARIADIC PARAMETERS
func displaySecretMessage(_ secretMessage: String...){
    for message in secretMessage{
        print(message)
    }
}
displaySecretMessage("Hello.", "I love you.", "I miss you.")


// Use pass by reference "&" and inout keyword to modify global variables.
// You can also assign functions to shorten variable names
var globalLength_cm: Float = 100
func convertCmToFeet(_ length_cm: inout Float) -> Float {
    length_cm = length_cm * 0.0328084
    return length_cm
}
let toFeet = convertCmToFeet
print("length before function call: \(globalLength_cm)")
print("length during function call: \(toFeet(&globalLength_cm))")
print("length after function call: \(globalLength_cm)")


// The datatype of a function is "(inputs_datatype) -> (outputs_datatype)"
// Therefore, the datatype of the function convertWaveLength() is
// (Float) -> (Float, Float)
// As a consequence, functions can be used as arguments to function calls,
// as parameters to declarations, and as return values.
