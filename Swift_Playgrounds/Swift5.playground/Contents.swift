import UIKit

class Person{
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
    func action(){
        print("Walk Walk")
    }
}

// Inherits or extends from Person class
class FitPerson: Person{
    override func action() {
            print("Run Run Run")
    }
}

class skinnyPerson: Person{
    var skinnyLevel: Int
    
    init(clothes: String, shoes: String, skinnyLevel: Int) {
        self.skinnyLevel = skinnyLevel
        super.init(clothes: clothes, shoes: shoes)
    }
    override func action() {
        print("So Slowwwwwww!")
    }
}

var akshay = Person(clothes: "t-shirt", shoes: "canvas")
var usain = FitPerson(clothes: "sports-sleeve", shoes: "spiky")
usain.action()
akshay.clothes
akshay.shoes
akshay.action()

struct TaylorFan{
    static var favoriteSong = "Look What"
    
    var name: String
    var age: Int
}

var akshay1 = TaylorFan(name: "Akshay", age: 50)
print(TaylorFan.favoriteSong)

