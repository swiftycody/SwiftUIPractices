//
//  TextModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/6/24.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, World! Hello, SwiftUI!")
            .font(.largeTitle)
            .foregroundStyle(Color.blue)
            .fontWeight(.bold)
            .multilineTextAlignment(.trailing)
            .italic()
            .underline()
    }
}

#Preview {
    TextModule()
}
