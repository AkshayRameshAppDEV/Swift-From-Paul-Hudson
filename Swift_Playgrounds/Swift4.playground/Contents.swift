import UIKit

// enums

enum WeatherType{
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String?{
    if weather == WeatherType.cloud{
        return nil
    } else {
        return "Amazing"
    }
}
getHaterStatus(weather: WeatherType.rain)

enum AnotherWeatherType{
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
    
}

func getHaterStatus(weather: AnotherWeatherType) -> String?{
    switch weather {
    case .cloud:
        return nil
    case .wind(let speed) where speed<10:
        return "Awesome"
    default:
        return "Perfect"
    }
    
}

getHaterStatus(weather: .wind(speed: 9))

//structs
struct Person{
    var name: String
    var type: String
    func describe(){
        print("My name is: \(name) and my type is \(type)")
    }
}

let akshay = Person(name: "Akshay", type: "Student")
let weekend = Person(name: "Weekend", type: "Musician")

print(akshay)
print(weekend)

let akshayClone = akshay
print(akshayClone)

print(akshayClone.describe())



