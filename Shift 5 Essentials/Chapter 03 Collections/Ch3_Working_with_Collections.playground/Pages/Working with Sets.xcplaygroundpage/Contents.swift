/*:
 # Working with Sets
 ---
 
 ## Topic Essentials
 Sets are a great tool you need to store unique, unorderd values in a collection, as opposed to arrays and dictionaries which can hold duplicates with no issue.
 
 ### Objectives
 + Create a set named **activeQuests** and understand the syntax
 + `insert` and `remove` elements from **activeQuests**
 + Sort **activeQuests** and check if it `contains` a certain value
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating sets
var activeQuests: Set<String> = ["Fetch Gemstones", "Big Boss","The Undertaker", "Granny Needs","Firewoods"]

// Inserting and removing elements

activeQuests.insert("Only the strong")
activeQuests.remove("The Undertaker")
print(activeQuests)

// More common methods
activeQuests.contains("All-4-One")
activeQuests.sorted()
// Sets only stored hashable values, all swift types are hashable. 
activeQuests
