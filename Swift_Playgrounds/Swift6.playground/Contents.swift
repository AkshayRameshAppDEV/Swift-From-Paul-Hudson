import UIKit

//Polymorphism

class Album{
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album{
    var studio: String
    
    init(name: String, studio: String){
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}


class LiveAlbum: Album{
    var location: String
    
    init(name: String, location: String){
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor", studio: "The Castles Studio")
var fearless = StudioAlbum(name: "Fearless", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes SoHO", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums{
//    print(album.getPerformance())
    if let studioAlbum = album as? StudioAlbum{
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum{
        print(liveAlbum.location)
    }
}
for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum](){
    print(album.getPerformance())
    print(album.location)
}

// Integer to string
var number: Int = 5
var text: String
text = String(number)

for i in 0...5{
    print(i)
}
print("-----------------------")
for i in 0..<5{
    print(i)
}

//==================================================

