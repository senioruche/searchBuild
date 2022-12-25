//
//  dummydata.swift
//  whatisapp
//
//  Created by uchenna obinna on 12/24/22.
//

import Foundation
struct User: Identifiable {
  var id = UUID()
  var name: String
  var age: Int
  var photo: String
}

let mockUsers: [User] = [
  User(name: "Alice", age: 25, photo:  "axel-vazquez-A77FAov-OzI-unsplash"),
  User(name: "Bob", age: 32, photo:  "albert-dera-ILip77SbmOE-unsplash"),
  User(name: "Charlie", age: 28, photo:  "foto-sushi-6anudmpILw4-unsplash"),
  User(name: "Dave", age: 45, photo:  "freestocks-9UVmlIb0wJU-unsplash"),
  User(name: "Eve", age: 40, photo:  "tamara-bellis-Brl7bqld05E-unsplash"),
  User(name: "Frank", age: 33, photo:  "gregory-hayes-h5cd51KXmRQ-unsplash"),
  User(name: "George", age: 29, photo:  "lethicia-matos-CSh-hNHc3Y8-unsplash"),
  User(name: "Heather", age: 22, photo:  "marco-chilese-nHIb0s-BZMA-unsplash"),
  User(name: "Iris", age: 27, photo:  "szvoreny-attila-Z_DjhwOUvTw-unsplash"),
  User(name: "Jake", age: 35, photo:  "meysam-jarahkar-LI7jB1925j0-unsplash"),
  User(name: "Kelly", age: 30, photo:  "christina-wocintechchat-com-50TkCaP8M3A-unsplash"),
  User(name: "Laura", age: 26, photo:  "jake-nackos-IF9TK5Uy-KI-unsplash"),
  User(name: "Mike", age: 24, photo:  "ivana-cajina-_7LbC5J-jw4-unsplash"),]
