//
//  ViewExtractionModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
            RowView(iconName: "swift", title: "Swift", subTitle: "Language")
            RowView(iconName: "swiftui", title: "SwiftUI", subTitle: "UI Framework")
            RowView(iconName: "apple", title: "Apple", subTitle: "ZZang")
            RowView(iconName: "wwdc22", title: "WWDC22", subTitle: "apple")
            RowView(iconName: "wwdc23", title: "WWDC23", subTitle: "apple")
        }
        .padding()
    }
}

#Preview {
    ViewExtractionModule()
}

struct RowView: View {
    let iconName: String
    let title: String
    let subTitle: String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}
