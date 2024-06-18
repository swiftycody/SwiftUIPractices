//
//  SpacerModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/8/24.
//

import SwiftUI

struct SpacerModule: View {
    var body: some View {
//        VStack {
//            Text("Hello")
//            Spacer()
//                .frame(width: 100)
//                .background(Color.yellow)
//            Text("World!")
//        }
//        HStack {
//            Text("Hello")
//            Spacer()
//                .frame(height: 50)
//                .background(Color.yellow)
//            Text("World!")
//        }
        VStack(alignment: .leading) {
            HStack {
                Image(.apple)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Apple")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Swift! Awesome programming language")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundStyle(Color.blue)
            }
            
            Divider()
            
            HStack {
                Image(.swiftui)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Swift")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("SwiftUI! Awesome UI Framework")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundStyle(Color.blue)
            }
            
            Divider()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SpacerModule()
}
