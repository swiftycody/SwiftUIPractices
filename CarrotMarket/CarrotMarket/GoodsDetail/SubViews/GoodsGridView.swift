//
//  GoodsGridView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

struct GoodsGridView: View {
    // NOTE: Grid의 ForEach에 넣을 데이터는 @State로 넣어야 함?
    let goodsItems: [GoodsInfo]
    let gridItems = [
        GridItem(.flexible(), alignment: .top),
        GridItem(.flexible(), alignment: .top)
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 16) {
            ForEach(goodsItems) { goods in
                if let firstImageResource = goods.imageResources.first {
                    GoodsGridItem(imageResource: firstImageResource,
                                  title: goods.title,
                                  price: goods.price)
                }
            }
        }
    }
}

#Preview {
    GoodsGridView(goodsItems: sampleGoodsInfos)
        .padding(.horizontal)
}
