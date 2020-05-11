import UIKit

var score = 3

switch score {
case 0:
    print("You are tied")
case 1..<3:
    print("You Won")
default:
    print("You Lost")
}

func favoriteAlbum(){
    print("My favorite is Blinding Lights")
}

func favoriteAlbumWithArtistAndYear(album: String, artist: String, year: Int){
    print("My favoite Album is \(album), and the Artist is \(artist) released year is \(year)")
}

func countLetters(in wrd: String){
    print("The word is \(wrd) and it has \(wrd.count) letters")
}

favoriteAlbum()
favoriteAlbumWithArtistAndYear(album: "After Hours", artist: "Weekend", year: 2020)
countLetters(in: "HOLAAMIGO")

func isWeekendSong(song: String) -> Bool {
    
    if(song == "Blinding Lights"){
        return true
    }
    if(song == "Often"){
        return true
    }
    return false
}

if(isWeekendSong(song: "Often")){
    print("It Weekend Song")
} else{
    print("Not a Weekend Song")
}
