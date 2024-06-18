//
//  PaddingModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/6/24.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
            Text("Hello, World! Hello, SwiftUI! Hello, World! Hello, SwiftUI!")
        }
        .background(Color.blue)
        .padding()
        .background(Color.orange)
        .padding()
        .background(Color.purple)
        .padding()
    }
}

#Preview {
    PaddingModule()
}
