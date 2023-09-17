var philippineProvinces = [String]()
// The code above demonstrates the syntax for declaring empty array
// var variableName = [type]()

// ADD ITEMS TO ARRAY USING "+" operator
philippineProvinces += [
    "Abra",
    "Agusan del Norte",
    "Agusan del Sur",
    "Aklan",
    "Albay",
    "Antique",
    "Apayao",
    "Aurora",
    "Basilan",
    "Bataan",
    "Batanes",
    "Batangas",
    "Benguet",
    "Biliran",
    "Bohol",
    "Bukidnon",
    "Bulacan",
    "Cagayan",
    "Camarines Norte",
    "Camarines Sur",
    "Camiguin",
    "Capiz",
    "Catanduanes",
    "Cavite",
    "Cebu",
    "Cotabato",
    "Davao de Oro",
    "Davao del Norte",
    "Davao del Sur",
    "Davao Occidental",
    "Davao Oriental",
    "Dinagat Islands",
    "Eastern Samar",
    "Guimaras",
    "Ifugao",
    "Ilocos Norte",
    "Ilocos Sur",
    "Iloilo",
    "Isabela",
    "Kalinga",
    "La Union",
    "Laguna",
    "Lanao del Norte",
    "Lanao del Sur",
    "Leyte",
    "Maguindanao del Norte",
    "Maguindanao del Sur",
    "Marinduque",
    "Masbate",
    "Misamis Occidental",
    "Misamis Oriental",
    "Mountain Province",
    "Negros Occidental",
    "Negros Oriental",
    "Northern Samar",
    "Nueva Ecija",
    "Nueva Vizcaya",
    "Occidental Mindoro",
    "Oriental Mindoro",
    "Palawan",
    "Pampanga",
    "Pangasinan",
    "Quezon",
    "Quirino",
    "Rizal",
    "Romblon",
    "Samar",
    "Sarangani",
    "Siquijor",
    "Sorsogon",
    "South Cotabato",
    "Southern Leyte",
    "Sultan Kudarat",
    "Sulu",
    "Surigao del Norte",
    "Surigao del Sur",
    "Tarlac",
    "Tawi-Tawi",
    "Zambales",
    "Zamboanga del Norte",
    "Zamboanga del Sur",
    "Zamboanga Sibugay",
    "Metro Manila",
]

// COUNT ITEMS IN ARRAY
print(philippineProvinces.count)

// CHECK IF ARRAY IS EMPTY
print(philippineProvinces.isEmpty)

// ACCESS ith ELEMENT
print(philippineProvinces[41])

// ASSIGN NEW ELEMENT AT INDEX i (Swift has 0 index start)
philippineProvinces[41] = "Home of Rizal"
print(philippineProvinces[41])

// SHUFFLE ITEMS
philippineProvinces.shuffle()

// ITERATION OF ARRAY
for province in philippineProvinces {
    print(province)
}

// ACCESS RANDOM ELEMENTS
// returns optional that's why I unwrapped it
print(philippineProvinces.randomElement()!)

// APPEND ITEM
 philippineProvinces.append("Hawaii")
for province in philippineProvinces {
    print(province)
}

// REMOVE LAST ELEMENT
philippineProvinces.removeLast()
for province in philippineProvinces {
    print(province)
}

// INSERT ELEMENT AT INDEX i
philippineProvinces.insert("Hawaii", at:82)
for province in philippineProvinces {
    print(province)
}

// REMOVE ELEMENT AT INDEX i
philippineProvinces.remove(at:82)
for province in philippineProvinces {
    print(province)
}
