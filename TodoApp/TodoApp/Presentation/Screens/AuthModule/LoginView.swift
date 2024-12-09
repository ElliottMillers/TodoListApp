//
//  LoginView.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Todo List", subtitle: "Get things done!", rotationAngel: 10.0, backgroundColor: .pink)
            // Login Form
            Form{
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding(.bottom, 4)
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                Button{
                    //Log in Attempt
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.blue)
                        
                        Text("Log in")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                }
                .frame(height: 40)
            }
            
            // Create Account
            VStack{
                Text("New around here?")
                 
                NavigationLink("Create an account!", destination: RegisterView())
                .padding(.bottom, 20)
            }
            Spacer()
            
        }
    }
}

#Preview {
    LoginView()
}
