import UIKit

// Optionals

func getHaterStatus(weather: String) -> String?{
    
    if weather == "sunny"{
        return nil
    } else{
        return "Hate"
    }
}

func takeHaterAction(status: String){
    if status == "Hate"{
        print("Hating")
    }
}

var status = getHaterStatus(weather: "rainy")

//very safe
if let haterStatus = getHaterStatus(weather: "Hate"){
    takeHaterAction(status: haterStatus)
}

// My Example

func getSportsRank(of sport: String, in collection: [String]) -> Int? {
    
    for i in 0..<collection.count{
        if sport == collection[i]{
            return i
        }
    }
    return nil
}

var sportsInOrderOfRank = ["Cricket", "Football", "Tennis"]


if let sportsRank = getSportsRank(of: "Football", in: sportsInOrderOfRank) {
    
    print("The Sports rank of Football is \(sportsRank + 1)")
} else {
    print("No sports found !")
}

// Force unwrap the optionals - Only if you are sure it has a value - Explicit, if the value is not there - then program crash
var sportsRankTest = getSportsRank(of: "Cricket", in: sportsInOrderOfRank)

if(sportsRankTest == nil) {
    print("There is no Rank for the sport")
} else {
    print("The rank for the chosen sport is: \(sportsRankTest!)")
}

func albumReleased(year: Int) -> String? {
    
    switch year {
    case 2006:
        return "Taylor Swift"
    case 2008:
        return "Fearless"
    default:
        return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()

let album1 = albumReleased(year: 2006) ?? "No album Released"
let album2 = albumReleased(year: 20306) ?? "No album Released"

