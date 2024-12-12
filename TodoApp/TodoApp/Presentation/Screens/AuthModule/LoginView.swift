//
//  LoginView.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Todo List", subtitle: "Get things done!", rotationAngel: 10.0, backgroundColor: .pink)
            // Login Form
            Form{
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled(true)
                    .padding(.bottom, 4)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                
                CustomButtonView(title: "Log in", backgroundColor: .blue) {
                    // atmp to log in
                }
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
