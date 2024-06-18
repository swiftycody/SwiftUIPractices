//
//  DataModelingModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct DataModelingModule: View {
    let menuItems: [MenuItem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView() {
                VStack(spacing: 24) {
                    ForEach(menuItems) { item in
                        MenuItemView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    DataModelingModule(menuItems: [
        .init(imageName: "anh-nguyen", type: "Hawaiian", restautantName: "Poke house"),
        .init(imageName: "anna-tukhfatullina", type: "Bakery", restautantName: "Bakery A"),
        .init(imageName: "chad-montano", type: "Bakery", restautantName: "Bakery B"),
        .init(imageName: "jimmy-dean", type: "Mart", restautantName: "2Mart"),
        .init(imageName: "joseph-gonzalez", type: "Bakery", restautantName: "Bakery C"),
        .init(imageName: "victoria-shes", type: "BBQ", restautantName: "BBQ house")
    ])
}
