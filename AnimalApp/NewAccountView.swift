//
//  NewAccountView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 20/7/23.
//

import SwiftUI
import FirebaseAuth

struct NewAccountView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("New Account")
                .font(.largeTitle)
        
            Spacer()
            
            
            Image("FarmHouse")
                .edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            // Email Field
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.gray)
                TextField("Email", text: $email)
                    .foregroundColor(.gray)
                    .font(.title)
                    .fontWeight(.bold)
                
                if(email.count != 0) {
                    Image(systemName: email.isValidEmail() ? "checkMark" : "xmark")
                        .frame(width: 30)
                        .fontWeight(.bold)
                        .foregroundColor(email.isValidEmail() ? .green : .red)
                }
            }.padding()
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
                ).padding()
            // Password Field
            
            HStack {
                
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                TextField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.title)
                    .fontWeight(.bold)

            }.padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                ).padding()
            
            // Cancel Create Account Button
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .foregroundColor(.gray)
                        .font(.title)
                }
                
                Spacer()
                
                Button(action: {
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        
                        if let error = error {
                            print(error)
                            return
                        }
                        
                        if let authResult = authResult {
                            print("\(authResult.user.uid)")
                        }
                        
                    }
                    
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Create Account")
                        .foregroundColor(.gray)
                        .font(.title)
                }
                
                Spacer()
                
            }
            
            Spacer()
        }
    }
}

struct NewAccountView_Previews: PreviewProvider {
    static var previews: some View {
        NewAccountView()
    }
}
