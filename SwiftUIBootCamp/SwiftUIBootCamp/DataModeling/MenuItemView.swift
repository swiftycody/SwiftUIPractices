//
//  MenuItemView.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct MenuItemView: View {
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(menuItem.restautantName)
                    .fontWeight(.semibold)
                Text(menuItem.type)
                    .foregroundStyle(.gray)
                Text("$0.99 Delivery fee | 15 - 30 min")
                    .foregroundStyle(Color.gray)
            }
            .font(.subheadline)
        }
        .padding(.horizontal)
    }
}

#Preview {
    MenuItemView(menuItem: .init(imageName: "anh-nguyen", type: "Hawaiian", restautantName: "Poke house"))
}
