//
//  GridModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct GridModule: View {
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible())
    ]
    
    let foodImages: [String] = [
        "anh-nguyen",
        "anna-tukhfatullina",
        "chad-montano",
        "jimmy-dean",
        "joseph-gonzalez",
        "victoria-shes"
    ]
    
    let dimension = UIScreen.main.bounds.width / 3 - 2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(foodImages, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())
                }
            }
            .padding(.horizontal, 1)
        }
    }
}

#Preview {
    GridModule()
}
