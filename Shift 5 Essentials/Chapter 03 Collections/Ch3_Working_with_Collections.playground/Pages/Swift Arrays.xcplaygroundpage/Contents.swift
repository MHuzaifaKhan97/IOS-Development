/*:
 # Swift Arrays
 ---
 
 ## Topic Essentials
 Swift arrays are **ordered lists**, meaning that the position of each element is determined by the order it was added. Arrays work off of indexes, which can be used to access and modify the values of individual items.
 
 ### Objectives
 + Create arrays with different syntax
 + Add initial values
 + Use the `count` and `isEmpty` methods
 + Access and update array values using subscripts
 
 [Next Topic](@next)
 
 */
// Creating arrays
var levelDifficulty:[String] = ["Easy","Moderate","Veteran","Nightmare"]
//Or
var extraSyntax1: Array<String> = Array<String>()


// Count and isEmpty
levelDifficulty.isEmpty
levelDifficulty.count

// Accessing array values
levelDifficulty[0]

levelDifficulty[3] = "Utter Ridiculousness"


