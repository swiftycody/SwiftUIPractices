//
//  TextFieldModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct TextFieldModule: View {
    @State var email = ""
    @State var password = ""
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(spacing: 24) {
            Image("apple")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                
            } label: {
                Text("Login")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: width - 32, height: 48)
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
