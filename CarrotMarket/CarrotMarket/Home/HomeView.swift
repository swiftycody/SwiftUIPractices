//
//  HomeView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/25/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack {
            Image(.user1)
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 110)
                .clipShape(RoundedRectangle(cornerSize: .init(width: 4, height: 4)))
            VStack {
                Text("에어팟 프로")
                HStack {
                    Text("군자동")
                    Text("·")
                    Text("3일전")
                }
                Text("220,000원")
                HStack {
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
