//
//  Animal.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 10/7/23.
//

import SwiftUI

struct Animal: Identifiable {
    
    let id = UUID()
    let imageName: String
    let name: String
    let field: String
    let url: URL
    let info: String
    let subjectIcon: String
    
}

struct AnimalList {
    
    static let animals = [
    
        Animal(imageName: "Sheep",
               name: "Sheep",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Domestic_sheep")!,
               info: "Sheep are domesticated animals raised on farms for their wool, meat, and milk. They are happiest living together in groups called flocks. Sheep are easily frightened if other animals come near, and will gather together for protection. In the spring, a mother sheep usually gives birth to one, two, or three lambs. ",
               subjectIcon: "m.circle"
              ),
        
        Animal(imageName: "Pig",
               name: "Pig",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Pig")!,
               info: "Pigs are intelligent animals. They can be taught to dance, hunt for truffles, race, pull carts and sniff out landmines. They can even be taught to play video games. ",
               subjectIcon: "m.circle"
              )
    
    ]
    
}
