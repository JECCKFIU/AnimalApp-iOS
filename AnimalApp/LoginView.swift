//
//  LoginView.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 20/7/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State private var isCreatedAccountViewPresented = false
    @State private var isPasswordCorrect: Bool = false
    @State private var showErrorAlert: Bool = false
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Image("FarmHouse")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    Spacer()
                    
                    
                    // Email Field
                    HStack {
                        
                        Image(systemName: "mail")
                            .foregroundColor(Color.black)
                        TextField("Email", text: $email)
                            .foregroundColor(Color.black)
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
                                .foregroundColor(email.isValidEmail() ? .green : .red)
                        ).padding()
                
                    
                    // Password Field
                
                    HStack {
                        
                        Image(systemName: "lock")
                            .foregroundColor(Color.black)
                        TextField("Password", text: $password)
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
        
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 2)
                                .foregroundColor(isPasswordCorrect ? .green : .red)
                        ).padding()
                    
                    
                    // New Account Button
                    
                    Button(action: { isCreatedAccountViewPresented.toggle()
                    }) {
                        Text("Create Account")
                    }.foregroundColor(Color.black)
                        .font(.title)
                        .sheet(isPresented: $isCreatedAccountViewPresented) {
                            NewAccountView()
                        }
                    
                    Spacer()
                    Spacer()
                    
                    // Login Button
                    
                    Button(action: {
                        
                        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                            
                            if let error = error {
                                print(error)
                                email = ""
                                password = ""
                                showErrorAlert.toggle()
                            }
                            
                            if let authResult = authResult {
                                isPasswordCorrect = true
                            }
                            
                        }
                        
                    }) {
                        
                        Text("Login")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black)
                                    .foregroundColor(.black)
                                    .opacity(0.5)
                            ).padding(.horizontal)
                        
                            .alert(isPresented: $showErrorAlert, content: {
                                Alert(title: Text("Error login. Please check email or password."))
                            })
                        
                    }.padding()
                        .padding(.top)
                    
                    
                }// end vstack
                //location 8
                
            }// end zstack
            //location 9
            
            NavigationLink(destination: ContentView(), isActive: $isPasswordCorrect) {
                EmptyView()
            }
            
        }// end navigationstack
        
    }// end body
}// end loginview

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
