/*:
 # Basic Functions
 ---
 
 ## Topic Essentials
 Functions are defined blocks of code that allow us to perform specific tasks in our apps. They can range from simple calculations to taking input parameters and returning specific value types.
 
 ### Objectives
 + Create a simple function that prints out a string
 + Add a return type to the function and pass back a string value
 + Add a function parameter and use it in the print message
 
 [Next Topic](@next)
 
 */
// Basic function
func findNearestAlly() {
    print("Searching...")
}

findNearestAlly()

func returnSomething() -> String {
    return "Hello World"
}

var value = returnSomething()

func parametricFunc(level: Int) {
    print("Searching for Ally above level \(level)")
}
parametricFunc(level: 40)
