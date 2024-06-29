//
//  GoodsGridItem.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

struct GoodsGridItem: View {
    let imageResource: ImageResource
    let title: String
    let price: String
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageResource)
                .resizable()
                .aspectRatio((171/118), contentMode: .fit)
                .clipShape(RoundedRectangle(cornerSize: .init(width: 4, height: 4)))
            Text(title)
                .textStyle(style: .R14)
            Text(price)
                .textStyle(style: .B14)
        }
    }
}

#Preview {
    GoodsGridItem(imageResource: .airpodPro, title: "에어팟 미개봉 팝니다.", price: "240,000원")
}
