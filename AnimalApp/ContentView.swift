//
//  ContentView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    
    var animals:[Animal] = AnimalList.animals
    
    var body: some View {
        
        NavigationView {
            
            List(animals, id: \.id) { animal in
                
                NavigationLink(destination: DetailView(animal: animal),
                               label: {
                    
                    //----------------------------------
                    HStack {
                        
                        Image(animal.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                            .cornerRadius(20)
                        
                        VStack(alignment: .leading, spacing: 15){
                            HStack{
                                Text(animal.name)
                                    .fontWeight(.bold)
                                
                                
                                Spacer()
                                Text(animal.field)
                                    .fontWeight(.semibold)
                                
                            }//end hstack
                            
                            HStack{
                                Image(systemName: animal.subjectIcon)
                                
                                Spacer()
                                
                            }.font(.subheadline)
                                .foregroundColor(.secondary)
                        }//end vstack
                    }//end hstack
                    
                    
                    
                }).navigationTitle("Animals")
            }//end list
        }//end nav view
    }//end body
}//end view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

