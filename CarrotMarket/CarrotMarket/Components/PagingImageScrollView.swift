//
//  PagingImageScrollView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI
import Kingfisher

struct PagingImageScrollView: View {
    let imageUrls: [String]
    
    var body: some View {
        TabView {
            ForEach(imageUrls, id: \.self) { imageUrl in
                KFImage(URL(string: imageUrl))
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
    PagingImageScrollView(imageUrls: imageUrls)
}
