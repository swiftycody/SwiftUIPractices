//
//  ControlFlowModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct ControlFlowModule: View {
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    
    var body: some View {
        VStack {
            Button {
                didLike.toggle()
                likes = didLike ? likes + 1 : likes - 1
            } label: {
                Image(systemName: didLike ? "heart.fill": "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundStyle(didLike ? .pink : .black)
            }
            
            Text("\(likes) Likes")
                .font(.headline)
        }
    }
}

#Preview {
    ControlFlowModule()
}
