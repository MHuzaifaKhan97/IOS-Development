import UIKit

var characterName: String = "Captain America"
var weaponclassification: String = "Shield"


characterName += " (Cap)"

var currentMana = 75.5

var manaPercent = String(currentMana/100)

var debugStats = "\(characterName)\n\nPrefers: \(weaponclassification)\nCurrent Mana: \(manaPercent)"

var questAccepted  = false
var canQuest = true

var questStatus = questAccepted && canQuest

debugStats.append(contentsOf: "\nQuesting: \(questStatus)")

print(debugStats)


