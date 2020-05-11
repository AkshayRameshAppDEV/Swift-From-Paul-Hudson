import UIKit

/** Data Types*/

var name = "Akshay Ramesh"
name = "Changed Akshay"

let nameConst = "Hello"

var name1: String
name1 = "Akshay"

var age: Int
age = 25

//Error
//name = 25
//age = "age"

var latitude: Double = 36.17777
var longitude: Float = -844446.77777
 
var stayOutTooLate: Bool
stayOutTooLate = false

var isTrue = true

/************************/

/***Operators*/

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 1

var x = 1.1
var y = 2.2
var z = x + y

z > 3
z >= 3
z > 4
z < 4

var romeo = "Romeo"
var Juliet = "Juliet"

romeo == Juliet

var aa = "Romeo"
var aaEq = "Romeo"

aa == aaEq

var love = romeo + " and " + Juliet

var modulo = 10 % 3
var division = 10 / 3.0
var division1 = 10 / 3


var stayOut = true
stayOut == true

!stayOut
stayOut != false

// String Interopolation
var nameTest = "Akshay Ramesh"
"Name is: \(nameTest)"

var currentAge = 5
var after10Years = currentAge + 10

"Your current age is \(currentAge), while after 10 years is \(after10Years)"


//Arrays - 0 based

var evenNumbers = ["2", "4", "6", "8"]
var songs = ["Backstreet Boys", "One more night"]

songs[0]
songs[1]
//songs[3] Array out of bounds

type(of: songs)

// Explicit String annotation
var songsExplicit: [String] = ["Backstreet Boys", "One more night"]
var songsAny: [Any] = ["Backstreet Boys", "One more night", 3]

//declare array of Strings songs
var songsArray: [String] = []

//Programmers prefer
var songsArrayPreference = [String]()

//songsArrayPreference[0] = 1 Cannot assign value directly like JS

//Concatenating 2 arrays
var array1 = ["Backstreet Boys", "One more night"]
var array2 = ["Heartless", "Blinding Lights", "One more night"]
var joinedArrays = array1 + array2
print(array1 + array2)

joinedArrays += ["New Added Song"]
print(joinedArrays)


//dictionaries

var person = [
    
    "first": "Akshay",
    "middle": "",
    "last": "Ramesh",
    "month": "January",
    "website": "akshay_ramesh@y.com"
]

//conditionals

var action: String
var personAction = "hater"

if (personAction == "hater"){
    action = "hate"
} else if (personAction == "player"){
    action = "play"
} else {
    action = "cruiser"
}


// multiple conditionals

var signalColor: Bool
signalColor = false

var policeAction: Bool
policeAction = false

if (signalColor && policeAction){
    print("GOOO !!!!")
}

if(!policeAction && !signalColor){
    
    print("WAIT")
}

// 10 times table in loop
for i in 1...10{
    print("\(i) X 10 = \(i * 10)")
}

//lyrics
var notAfraid: String
notAfraid = "Not Afraid"

for _ in 1...10{
    
    notAfraid += " yeah!"
}

print(notAfraid)

var fruits = ["apple", "orange", "pear"]
var actionFruit = ["drink", "eat", "move"]

//for i in 0 ... 2{
//
//    print("fruits: \(fruits[i]) and actionFruit: \(actionFruit[i])")
//}

for name in 0..<fruits.count {
    //YOUR LOGIC....
    print(name)
}

var peopleList = ["players", "haters", "heart-breakers", "fakers"]
var actionsList = ["play", "hate", "break", "fake"]

for i in 0..<peopleList.count{
    
    var str = "\(peopleList[i]) gonna"
    for _ in 1...5{
        str += " \(actionsList[i])"
    }
    
    print(str)
}

// Game Loops

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if(counter == 556){
        
        break
    }
}

var songsListWhile = ["Hello", "I", "Amy AK", "Akshay"]

for song in 0..<songsListWhile.count{
    
    if(songsListWhile[song] == "Amy AK"){
        continue
    }
    
    print("\(songsListWhile[song])")
}
