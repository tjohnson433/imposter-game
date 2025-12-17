//
//  charadeWords.swift
//  ImposterGame
//
//  Created by Thomas Johnson on 17/12/2025.
//

import SwiftUI

struct charadeWord {
    let text: String
}

func getRandomMovieWord() -> charadeWord {
    let words = [
        "Star Wars",
        "The Godfather",
        "The Matrix",
        "Inception",
        "The Shawshank Redemption",
        "Avengers: Endgame",
        "Jurassic Park",
        "Titanic",
        "Pirates of the Caribbean",
        "Frozen",
        "Jaws",
        "The Dark Knight",
        "Forrest Gump",
        "Avatar",
        "Gladiator",
        "Harry Potter and the Sorcerer's Stone",
        "Back to the Future",
        "The Lion King",
        "Interstellar",
        "Toy Story",
        "Wonder Woman",
        "Black Panther",
        "The Lord of the Rings: The Fellowship of the Ring",
        "Finding Nemo",
        "Spider-Man: No Way Home"

    ]
    
    return charadeWord(text: words.randomElement()!)
}

func getRandomBookWord() -> charadeWord {
    let words = [
        "To Kill a Mockingbird",
        "1984",
        "Pride and Prejudice",
        "The Great Gatsby",
        "The Hunger Games",
        "Harry Potter",
        "The Catcher in the Rye",
        "Lord of the Rings",
        "Animal Farm",
        "The Chronicles of Narnia",
        "The Hobbit",
        "Jane Eyre",
        "The Fault in Our Stars",
        "Moby Dick",
        "Twilight",
        "Little Women",
        "The Kite Runner",
        "The Da Vinci Code",
        "Wuthering Heights",
        "Percy Jackson",
        "Divergent",
        "Fahrenheit 451",
        "Dracula",
        "The Alchemist",
        "Charlotte's Web"

    ]
    
    return charadeWord(text: words.randomElement()!)
}

func getRandomAnimalWord() -> charadeWord {
    let words = [
        "Cow",
        "Elephant",
        "Giraffe",
        "Hippopotamus",
        "Jellyfish",
        "Bat",
        "Bear",
        "Cat",
        "Dog",
        "Penguin",
        "Lion",
        "Tiger",
        "Rabbit",
        "Kangaroo",
        "Koala",
        "Fox",
        "Wolf",
        "Dolphin",
        "Shark",
        "Whale",
        "Octopus",
        "Zebra",
        "Raccoon",
        "Frog",
        "Snake",
        "Alligator",
        "Eagle",
        "Owl",
        "Hawk",
        "Parrot"

        
    ]
    
    return charadeWord(text: words.randomElement()!)
}

func getRandomPeopleWord() -> charadeWord {
    let words = [
        "Spider-Man",
        "Doctor",
        "Superman",
        "Mechanic",
        "Tom Cruise",
        "Arnold Schwarzenegger",
        "Batman",
        "Taylor Swift",
        "Chef",
        "Iron Man",
        "Elon Musk",
        "Nurse",
        "Wonder Woman",
        "Chris Hemsworth",
        "Programmer",
        "Billie Eilish",
        "Harry Potter",
        "DJ Khaled",
        "Scientist",
        "Naruto",
        "Emma Watson",
        "Pilot",
        "Deadpool",
        "Doctor Who",
        "Serena Williams"

    ]
    return charadeWord(text: words.randomElement()!)
}

func getRandomMixedWord() -> charadeWord {
    let words = [
        "Spider-Man",
        "Doctor",
        "Superman",
        "Mechanic",
        "Tom Cruise",
        "Arnold Schwarzenegger",
        "Batman",
        "Taylor Swift",
        "Chef",
        "Iron Man",
        "Elon Musk",
        "Nurse",
        "Wonder Woman",
        "Chris Hemsworth",
        "Programmer",
        "Billie Eilish",
        "Harry Potter",
        "DJ Khaled",
        "Scientist",
        "Naruto",
        "Emma Watson",
        "Pilot",
        "Deadpool",
        "Doctor Who",
        "Serena Williams",
        "Cow",
        "Elephant",
        "Giraffe",
        "Hippopotamus",
        "Jellyfish",
        "Bat",
        "Bear",
        "Cat",
        "Dog",
        "Penguin",
        "Lion",
        "Tiger",
        "Rabbit",
        "Kangaroo",
        "Koala",
        "Fox",
        "Wolf",
        "Dolphin",
        "Shark",
        "Whale",
        "Octopus",
        "Zebra",
        "Raccoon",
        "Frog",
        "Snake",
        "Alligator",
        "Eagle",
        "Owl",
        "Hawk",
        "Parrot",
        "To Kill a Mockingbird",
        "1984",
        "Pride and Prejudice",
        "The Great Gatsby",
        "The Hunger Games",
        "Harry Potter",
        "The Catcher in the Rye",
        "Lord of the Rings",
        "Animal Farm",
        "The Chronicles of Narnia",
        "The Hobbit",
        "Jane Eyre",
        "The Fault in Our Stars",
        "Moby Dick",
        "Twilight",
        "Little Women",
        "The Kite Runner",
        "The Da Vinci Code",
        "Wuthering Heights",
        "Percy Jackson",
        "Divergent",
        "Fahrenheit 451",
        "Dracula",
        "The Alchemist",
        "Charlotte's Web",
        "Star Wars",
        "The Godfather",
        "The Matrix",
        "Inception",
        "The Shawshank Redemption",
        "Avengers: Endgame",
        "Jurassic Park",
        "Titanic",
        "Pirates of the Caribbean",
        "Frozen",
        "Jaws",
        "The Dark Knight",
        "Forrest Gump",
        "Avatar",
        "Gladiator",
        "Harry Potter and the Sorcerer's Stone",
        "Back to the Future",
        "The Lion King",
        "Interstellar",
        "Toy Story",
        "Wonder Woman",
        "Black Panther",
        "The Lord of the Rings: The Fellowship of the Ring",
        "Finding Nemo",
        "Spider-Man: No Way Home",
    ]
    
    return charadeWord(text: words.randomElement()!)
}
