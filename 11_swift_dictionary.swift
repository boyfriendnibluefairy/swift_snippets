var countryCode = [Int:String]()
// The code above declares empty dictionary
// SYNTAX:
// var variableName = [key_type, value_type]()

// The code below demonstrates simultaenous declaration and initialization
// of dictionary
var aseanCode:[Int:String] =
[
    673 : "Brunei",
    855 : "Cambodia",
    062 : "Indonesia"
]
// SYNTAX: var variableName: [key_type, value_type] = [...]

// ACCESS ITEMS based on keys
// The result is optional so I unwrapped the result.
print(aseanCode[062]!)
print("===")

// SET DEFAULT VALUE IN CASE A KEY DO NOT HAVE CORRESPONDING VALUE
print(aseanCode[673, default: "Item not found"])
print("======")

// EFFICIENT WAY TO INITIALIZE DICTIONARIES USING zip()
let keys:[Int] = [673, 855, 062, 856, 060, 095, 063, 065, 066, 084]
let values:[String] = [
    "Brunei", "Cambodia", "Indonesia", "Laos", "Malaysia",
    "Myanmar", "Philippines", "Singapore", "Thailand", "Vietnam"]
var aseanCallCode = Dictionary(uniqueKeysWithValues: zip(keys,values))

// COUNT ITEMS
print(aseanCallCode.count)
print("=========")

// DICTIONARY ITERATION
for (callCode, country) in aseanCallCode {
    print("CODE: \(callCode) - COUNTRY: \(country)")
}
print("+++")

// UPDATE VALUE
aseanCallCode[063] = "PHILIPPINES"
for (callCode, country) in aseanCallCode {
    print("CODE: \(callCode) - COUNTRY: \(country)")
}
print("+++++++++")

// DELETE VALUE
aseanCallCode[095] = nil
for (callCode, country) in aseanCallCode {
    print("CODE: \(callCode) - COUNTRY: \(country)")
}
print("=========")

// ADD NEW KEY-VALUE PAIR
aseanCallCode[095] = "Myanmar"
for (callCode, country) in aseanCallCode {
    print("CODE: \(callCode) - COUNTRY: \(country)")
}
