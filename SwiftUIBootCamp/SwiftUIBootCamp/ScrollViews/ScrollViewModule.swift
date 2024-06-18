//
//  ScrollViewModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/8/24.
//

import SwiftUI

struct ScrollViewModule: View {
    let foodImages: [String] = [
        "anh-nguyen",
        "anna-tukhfatullina",
        "chad-montano",
        "jimmy-dean",
        "joseph-gonzalez",
        "victoria-shes"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView() {
                VStack(spacing: 24) {
                    ForEach(foodImages, id: \.self) { foodImage in
                        VStack(alignment: .leading) {
                            Image(foodImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .cornerRadius(10)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Shoto")
                                    .fontWeight(.semibold)
                                Text("$0.99 Delivery fee | 15 - 30 min")
                                    .foregroundStyle(Color.gray)
                            }
                            .font(.subheadline)
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewModule()
}
