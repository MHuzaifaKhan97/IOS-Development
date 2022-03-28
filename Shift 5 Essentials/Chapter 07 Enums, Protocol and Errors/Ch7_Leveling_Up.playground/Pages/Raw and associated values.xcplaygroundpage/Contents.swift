/*:
 # Raw and Associated Values
 ---
 
 ## Topic Essentials
 Enumerations can be expanded to include raw values, which can store unique or sequential values, or associated values, which can capture case specific parameters for use in their respective code blocks.
 
 ### Objectives
 + Declare an enum with a raw value
 + Declare an enum with associated values
 + Add a method inside the enum to execute a switch statement for each case
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Raw values
//enum NonPlayableCharacters: Int {
//    case Village
//    case BlackSmith
//    case Merchant
//}
enum NonPlayableCharacters: String {
    case Village = "Common, not much useful"
    case BlackSmith = "One per village "
    case Merchant = "Not limit for village"
}

var blackSmith = NonPlayableCharacters.BlackSmith
print(blackSmith.rawValue) // result value is (One per village)

// Associated values

enum PlayerState {
    case Alive
    case KO(level: Int)
    case Unknown(debugError: String)
    
    func evaluateCase(){
        switch self {
        case .Alive:
            print("Alive")
        case .KO(let restartLevel):
            print("Sorry back to level \(restartLevel) for you")
        case .Unknown(let message):
            print(message)
        default:
            print("Unknown state")
        }
    }
}

PlayerState.KO(level: 1).evaluateCase() // sorry back to level 1 for you
