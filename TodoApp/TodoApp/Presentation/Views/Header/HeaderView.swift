//
//  HeaderView.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 10 ))
            VStack {
                Text("ToDo List")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                Text("Get things done")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 24))
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)

    }
}

#Preview {
    HeaderView()
}
