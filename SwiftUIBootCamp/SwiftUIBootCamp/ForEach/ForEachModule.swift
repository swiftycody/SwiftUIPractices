//
//  ForEachModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/8/24.
//

import SwiftUI

struct ForEachModule: View {
    let names: [String] = [
        "Apple",
        "Swift",
        "SwiftUI",
        "Tim",
        "Cook"
    ]
    
    var body: some View {
        VStack {
            ForEach(names, id: \.self) { name in
                HStack {
                    Image(.apple)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                            .fontWeight(.bold)
                        Text("Swift! Awesome programming language")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundStyle(Color.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ForEachModule()
}
