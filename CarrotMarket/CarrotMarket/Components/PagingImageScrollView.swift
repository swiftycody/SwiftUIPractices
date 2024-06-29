//
//  PagingImageScrollView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

struct PagingImageScrollView: View {
    let imageResources: [ImageResource]
    
    var body: some View {
        TabView {
            ForEach(imageResources, id: \.self) { imageResource in
                Image(imageResource)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        // NOTE: PagingScroll도 TabView의 스타일이었다.
    }
}

#Preview {
    PagingImageScrollView(imageResources: imageResources)
}
