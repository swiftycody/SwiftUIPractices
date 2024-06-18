//
//  ImagesModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/6/24.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        Image(systemName: "heart.circle.fill")
            .resizable()
            .foregroundStyle(Color.red)
            .frame(width: 100, height: 100)
        
        Image(.swiftui)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 100)
            .clipShape(Circle())
    }
}

#Preview {
    ImagesModule()
}
