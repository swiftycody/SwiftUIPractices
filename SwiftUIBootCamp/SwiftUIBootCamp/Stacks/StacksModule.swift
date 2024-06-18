//
//  StacksModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/6/24.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
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
                Text("SwiftUI!")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    StacksModule()
}
