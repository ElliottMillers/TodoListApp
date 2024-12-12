//
//  CustomButtonView.swift
//  TodoApp
//
//  Created by Elliott on 12.12.2024.
//

import SwiftUI

struct CustomButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    var body: some View {
        Button{
            //action
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(backgroundColor)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
        .frame(height: 40)
    }
}

#Preview {
    CustomButtonView(title: "value", backgroundColor: .blue){
        //action
    }
}
