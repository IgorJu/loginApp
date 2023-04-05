//
//  User.swift
//  loginApp
//
//  Created by Igor on 05.04.2023.
//

struct User {
    let login = "Alexey"
    let password = "123"
    let person: Person
    
    static func getPerson() -> User {
        let person = User(person: Person(
            name: "Igor",
            surname: "Rukaleev",
            age: "25",
            zodiac: "Aries",
            englishLevel: "Upper Intermediate",
            description: "I was born in Russia, and live all my life here. I started this course 2 months ago. I unterstand more and more information about an incredible language as Swift. I hope that that at once i will be able to become a good Ios - Developer.",
            avatar: "Igor",
            animal:
                Animal(
                    type: "Type: Cat",
                    name: "Name: Alisa",
                    age: "Age: 7",
                    image: "Alica",
                    favoriteActions: "eat, sleep, repeat"
                )
        )
        )
        return person
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let zodiac: String
    let englishLevel: String
    let description: String
    let avatar: String
    let animal: Animal
    
    var fullname: String {
        name + " " + surname
    }
}

struct Animal {
    let type: String
    let name: String
    let age: String
    let image: String
    let favoriteActions: String
}
