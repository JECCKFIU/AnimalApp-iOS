//
//  Animal.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 10/7/23.
//

import SwiftUI
import AVFoundation

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
        
        Animal(imageName: "Cat",
               name: "Cat",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Cat")!,
               info: "Cats have been domesticated (tamed) for nearly 10,000 years. Domesticated cats who live on farms to keep rodents away are called farm cats. Feral cats are domestic cats that live away from humans. Cats are one of the most popular pets in the world. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Chicken",
               name: "Chicken",
               field: "Bird",
               url: URL(string: "https://simple.wikipedia.org/wiki/Chicken")!,
               info: "Cats have been domesticated (tamed) for nearly 10,000 years. Domesticated cats who live on farms to keep rodents away are called farm cats. Feral cats are domestic cats that live away from humans. Cats are one of the most popular pets in the world. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Cow",
               name: "Cow",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Cow")!,
               info: "Cows are one of the most common farm animals in the world. They are a mammal of the bovine family, which also includes buffalo and bison. Cows are herbivores, meaning they only eat plants. They are known for their milk production, and their meat is a popular food source. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Dog",
               name: "Dog",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Dog")!,
               info: "Today, some dogs are used as pets while others are used to help humans do their work. Dogs are popular pets because they are usually playful, friendly, and listen well to humans. Thirty million dogs in the United States are registered as pets. Dogs are sometimes referred to as 'man's best friend' because they are kept as domestic pets and are usually loyal and like being around humans.  ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Duck",
               name: "Duck",
               field: "Bird",
               url: URL(string: "https://simple.wikipedia.org/wiki/Duck")!,
               info: "Ducks lay eggs once a year and are omnivorous, eating aquatic plants and tiny animals. Dabbling ducks feed on the surface of water or on land, or as deep as they can reach by up-ending without completely submerging. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Pig",
               name: "Pig",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Pig")!,
               info: "Pigs are intelligent animals. They can be taught to dance, hunt for truffles, race, pull carts and sniff out landmines. They can even be taught to play video games. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Pony",
               name: "Pony",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Pony")!,
               info: "Ponies are generally considered intelligent and friendly. They are sometimes also described as stubborn or cunning. Properly trained ponies are appropriate mounts for children who are learning to ride. Larger ponies can be ridden by adults, as ponies are usually strong for their size. ",
               subjectIcon: "leaf.circle"
              ),
        
        Animal(imageName: "Rooster",
               name: "Rooster",
               field: "Bird",
               url: URL(string: "https://simple.wikipedia.org/wiki/Rooster")!,
               info: "A male chicken is called a rooster or a cock (short for cockerel). A female chicken is called a hen. A young chicken is called a chick. Like other female birds, hens lay eggs which can hatch into chicks. ",
               subjectIcon: "leaf.circle"
              ),
    
        Animal(imageName: "Sheep",
               name: "Sheep",
               field: "Mammal",
               url: URL(string: "https://simple.wikipedia.org/wiki/Domestic_sheep")!,
               info: "Sheep are domesticated animals raised on farms for their wool, meat, and milk. They are happiest living together in groups called flocks. Sheep are easily frightened if other animals come near, and will gather together for protection. In the spring, a mother sheep usually gives birth to one, two, or three lambs. ",
               subjectIcon: "leaf.circle"
              )
    ]
    
}
