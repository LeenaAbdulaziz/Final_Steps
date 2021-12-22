//
//  People.swift
//  Final_Steps
//
//  Created by Linah abdulaziz on 18/05/1443 AH.
//

import Foundation

// MARK: - People
struct People: Codable {
    let count: Int
    let next: String
    let results: [Person]
}

// MARK: - Result
struct Person: Codable {
    let name, height, mass, hairColor: String
    let skinColor, eyeColor, birthYear: String
    let gender: Gender
    let homeworld: String
    let films, species, vehicles, starships: [String]
    let created, edited: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender, homeworld, films, species, vehicles, starships, created, edited, url
    }
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
    case nA = "n/a"
}
