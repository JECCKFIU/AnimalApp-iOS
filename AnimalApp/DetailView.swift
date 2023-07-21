//
//  DetailView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 11/7/23.
//

import SwiftUI

struct DetailView: View {
    
    var animal: Animal
    
    var body: some View {
        
        VStack(spacing:25){
            
   
            Image(animal.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .cornerRadius(20)
            
            Text(animal.name)
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            Text(animal.field)
                .fontWeight(.semibold)
                .font(.system(size: 15))
            
            
            Text(animal.info)
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .lineLimit(7)
            
            HStack {
                
                Spacer()
                
                Link( destination: animal.url, label:{
                    Text("learn more")
                        .foregroundColor(Color.green)
                })
                
                Spacer()
                
                Button(action: {
                    // PLAY SOUND HERE
                    playSound(key: animal.name)
                    
                }) {
                    VStack {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 45, height: 45)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.green)
                    }
                }
                
                Spacer()
            }
            
            Spacer()
            
        }.padding()
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: AnimalList.animals.first!)
    }
}
