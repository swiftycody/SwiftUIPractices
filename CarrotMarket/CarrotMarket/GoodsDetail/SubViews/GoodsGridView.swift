//
//  GoodsGridView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

struct GoodsGridView: View {
    // NOTE: Grid의 ForEach에 넣을 데이터는 @State로 넣어야 함.
    @State var goodsItems: [GoodsInfo]
    let gridItems = [GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top)]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 16) {
            ForEach(goodsItems) { goods in
                if let firstImageUrl = goods.imageUrls.first {
                    GoodsGridItem(imageUrl: firstImageUrl,
                                  title: goods.title,
                                  price: goods.price)
                }
            }
        }
    }
}

#Preview {
    GoodsGridView(goodsItems: [sampleGoodsInfo1, sampleGoodsInfo2, sampleGoodsInfo3, sampleGoodsInfo4])
        .padding(.horizontal)
}
