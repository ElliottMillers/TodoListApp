//
//  HeaderView.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let rotationAngel: Double
    let backgroundColor: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: rotationAngel ))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                Text(subtitle)
                    .foregroundStyle(Color.white)
                    .font(.system(size: 24))
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)

    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", rotationAngel: 10, backgroundColor: .blue)
}
