/*:
 # Access Modifiers and Properties
 ---
 
 ## Topic Essentials
 Like most programming languages, swift allows you to limit, or control, how classes, structs, properties, and other entities are accessed based on the module or file they’re in. There are four levels of access in swift, public, internal, file private, and private.
 
 Swift also allows properties to be declared as static, class, read-only and read-write.
 
 ### Objectives
 + Explore the four available access levels
 + Add a read-only (computed) property to Adventurer
 + Add a read-write property to Adventurer
 + Add a static and class property to Adventurer
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Four types of Access modifiers
//public: freely access inside source file as well as seperate modules that import parent module.
//internal: can be access by any source file within their define module. (by default every var is internal)
//private: access inside their declaration scope
//fileprivate: access only inside their module

// Test class
class Adventurer {
    var name: String
    var specialMove: String?
    let maxHealth: Int
    
    // computed variable
    var healthLast: Int {
        return maxHealth - health
    }
    
    static var maxActivelayers = 10
    
    class var credo:String {
        return "Defend the helpless"
    }
    
    fileprivate var health: Int
    var Health: Int{
        get {return health}
        set{
            if(newValue <= 100){
                health = newValue
            }
        }
    }
    
    
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
        self.health = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    
    func printStats() {
        print("Character: \(self.name), Health: \(self.health)/\(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
var player2 = Adventurer(name: "Steven")

player1.printStats()
player2.printStats()

Adventurer.credo
Adventurer.maxActivelayers
