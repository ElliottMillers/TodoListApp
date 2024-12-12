//
//  RegisterView.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var mail: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Registration", subtitle: "Start organazing todos ", rotationAngel: -10.0, backgroundColor: .orange)
            Spacer()
            Form{
                TextField("Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Adress", text: $mail)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.none)
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                CustomButtonView(title: "Create an Account", backgroundColor: .blue) {
                    // atmp to log in
                }
            }
            .offset(y: -50)
            
        }
    }
}

#Preview {
    RegisterView()
}
