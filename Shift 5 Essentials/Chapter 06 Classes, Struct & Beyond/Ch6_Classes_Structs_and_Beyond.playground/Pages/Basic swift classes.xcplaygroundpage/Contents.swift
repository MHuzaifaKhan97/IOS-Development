/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Even though swift has an entire library of built-in classes and structs for us to use in our applications, we’ll still need to know how to create our own. These data structures can have properties, methods, initializers, and in the case of classes can have their own subclasses.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Declare instance properties with or without values
 + Define designated and convenience initializers
 + Understand reference type behavior
 
 [Next Topic](@next)
 
 */
// Declaring a new class

import CoreGraphics
class Adventure {
    var name:String
    let maxHealth:Int
    
    var specialMode: String?
    // Constructor
    init(name:String, maxHP:Int){
        self.name = name
        self.maxHealth = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP:100)
    }
    
    
    func printStats(){
        print("Characters: \(self.name), Max Health: \(self.maxHealth) ")
    }
}


var player1 = Adventure(name: "Huzaifa Khan", maxHP: 99)
var player2 = Adventure(name: "Waleed Khan")

var defaultPlayer = player1
defaultPlayer.name = "M Huzaifa Khan" // now player1 and defaultPlayer both names is updated because we passed reference.

player1.printStats()
player2.printStats()


