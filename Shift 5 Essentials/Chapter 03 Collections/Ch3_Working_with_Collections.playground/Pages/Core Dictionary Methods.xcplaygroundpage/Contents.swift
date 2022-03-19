/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playerStats:[String:Int] = [
    "HP":100,
    "Attack":25,
    "Gold":29
]
var oldValues = playerStats.updateValue(30, forKey: "Attack")
//playerStats = ["Evasion":12, "MP":55] // override dictionary

// Caching and removing items
playerStats["Gold"] = nil
var removedValue = playerStats.removeValue(forKey: "Attack")

print(playerStats)
// Nested dictionaries
var questBoard = [
    
    "Fetch Gemstones": [
        "Objective":"Retrieve 5 gemstones",
        "Secret":"Complete in under 5 minutes"
    ],
    "Defeat Big Boss":[
        "Objective":"Beat the boss",
        "Secret":"When with 50% health"
    ]
]

var gemStoneObjective = questBoard["Fetch Gemstones"]?["Objective"]

