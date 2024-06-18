//
//  ListModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct ListModule: View {
    
    @State var foodImages: [String] = [
        "anh-nguyen",
        "anna-tukhfatullina",
        "chad-montano",
        "jimmy-dean",
        "joseph-gonzalez",
        "victoria-shes"
    ]
    
    var icons: [String] = [
        "apple",
        "swift",
        "swiftui",
        "wwdc22",
        "wwdc23",
        "appstore"
    ]
    var body: some View {
        List {
            Section("foodImages") {
                ForEach(foodImages, id: \.self) { imageName in
                    Text(imageName)
                }
                .onDelete(perform: { indexSet in
                    foodImages.remove(atOffsets: indexSet)
                })
            }
            
            Section("icons") {
                ForEach(icons, id: \.self) { iconName in
                    Text(iconName)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListModule()
}
