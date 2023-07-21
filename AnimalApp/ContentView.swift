//
//  ContentView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 9/7/23.
// this is insideappview in tutorial

import SwiftUI

struct ContentView: View {
    
    var animals:[Animal] = AnimalList.animals
    @State var searchText = ""
    
    var body: some View {
        
        NavigationStack {
            List(searchBar) {animal in
            //List(animals, id: \.id) { animal in
                
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
                    
                    
                    
                })
                .navigationTitle("Farm Animals")
                
            }//end list
        }//end nav view
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search by Animals!")
        
    }//end body
    
    var searchBar: [Animal] {
        if searchText.isEmpty {
            return animals
        } else {
            return animals.filter{ $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
  
    
}//end view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

