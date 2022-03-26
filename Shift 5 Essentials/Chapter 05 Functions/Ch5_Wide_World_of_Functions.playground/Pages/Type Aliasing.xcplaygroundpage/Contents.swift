/*:
 # Type Aliasing
 ---
 
 ## Topic Essentials
 Type aliasing is a great tool for combining complex or unwieldy custom values or collections of values into clearer types.
 
 ### Objectives
 + Create a type alias tuple with a type annotation
 + Create a type alias closure and give it a type annotation
 + Use the new tuple typealisa as a functions return type
 + Use the new closure typealias as an input parameter for a function
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var partyMembers = ["Harrison", "Steven", "Bob the Noob"]

// Type alias as a return value
typealias AttackTupple = (name: String, damage: Int, rechargable: Bool)

var sunStrike: AttackTupple = ("Sun Strike", 55, false)

func levelUpAttack(baseAttack: AttackTupple) -> AttackTupple {
    let increasedAttack: AttackTupple  = (baseAttack.name,baseAttack.damage + 10,true)
    return increasedAttack
}

var poweredAttack = levelUpAttack(baseAttack: sunStrike)

// Type alias as a function parameter

typealias ArrayClosure = ([String]) -> Void

//func activeMembers(completion: ([String]) -> Void) {
//    completion(partyMembers)
//}

// Now instead of above we write
func activeMembers(completion:ArrayClosure) {
    completion(partyMembers)
}


activeMembers { (members) in
    for name in members {
        print("\(name) is active")
    }
}