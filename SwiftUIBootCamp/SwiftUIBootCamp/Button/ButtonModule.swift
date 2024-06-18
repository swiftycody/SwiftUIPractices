//
//  ButtonModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct ButtonModule: View {
    @State var rectangleColor = Color.blue
    @State var title = "Hello"
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .foregroundStyle(rectangleColor)
            
            Text(title)
                .font(.title)
            
            Button("Click Me!") {
                rectangleColor = .orange
                title = "Basic Button"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Custom Button"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.purple)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button {
                rectangleColor = .pink
                title = "Image Button"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.pink)
            }
        }
    }
}

#Preview {
    ButtonModule()
}
