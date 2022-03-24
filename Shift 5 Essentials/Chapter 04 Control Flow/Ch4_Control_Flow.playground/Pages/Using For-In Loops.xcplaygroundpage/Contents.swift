/*:
 # Using FOR-IN Loops
 ---
 
 ## Topic Essentials
 For-in loops are used primarily to iterate, or loop through, sequences. Sequences can be array items, dictionary key-value pairs, ranges, and even characters in a string.
 
 ### Objectives
 + Use a for-in loop to iterate over a string, array, dictionary, and index ranges
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

// Strings and arrays
for stringCharacters in playerGreeting {
    print(stringCharacters)
}

for armor in armorTypes{
    print(armor)
}

// Dictionary key-value pairs

for weaponKey in weapons.keys{
    print(weaponKey)
}
for weaponValues in weapons.values{
    print(weaponValues)
}

for (weapon, damage) in weapons{
    print("\(weapon): \(damage)")
}
// Using ranges

// closed range
for indexNumber in 1...10{
    print(indexNumber)
}
// one sided range
for armor in armorTypes[1...]{
    print(armor)
}
// half open
for index in 1..<10{
    print(index)
}

for armor in armorTypes[..<armorTypes.count]{
    print(armor)
}
