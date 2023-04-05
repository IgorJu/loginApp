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
            isKnowEnglish: true)
        )
        return person
    }
    
}

struct Person {
    let name: String
    let surname: String
    var fullname: String {
        name + " " + surname
    }
    let age: String
    let zodiac: String
    let isKnowEnglish: Bool
}
