//
//  GoodsListItemView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/29/24.
//

import SwiftUI

struct GoodsListItemView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let imageResource: ImageResource
    let goodsName: String
    let region: String
    let pullUp: String
    let price: String
    let interestingCount: Int
    let viewCount: Int
    
    var body: some View {
        HStack {
            Image(imageResource)
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 110)
                .clipShape(RoundedRectangle(cornerSize: .init(width: 4, height: 4)))
            
            FixedSpacer()
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(goodsName)
                        .textStyle(style: .R16, color: .titleColor(forScheme: colorScheme))
                    HStack(spacing: 4) {
                        Text(region)
                            .textStyle(style: .R12, color: .hex8C8C8C)
                        Text("·")
                            .textStyle(style: .R12, color: .hex8C8C8C)
                        Text(pullUp)
                            .textStyle(style: .R12, color: .hex8C8C8C)
                    }
                    Text(price)
                        .textStyle(style: .B15, color: .hexFF7E36)
                }
                Spacer()
                HStack(spacing: 4) {
                    Spacer()
                    HStack(spacing: 2) {
                        Image(.chat)
                            .resizable()
                            .frame(width: 16, height: 16)
                            .tint(.hex8C8C8C)
                        Text("\(interestingCount)")
                            .textStyle(style: .R12, color: .hex8C8C8C)
                    }
                    HStack(spacing: 2) {
                        Image(.heart)
                            .resizable()
                            .frame(width: 16, height: 16)
                            .tint(.hex8C8C8C)
                        Text("\(viewCount)")
                            .textStyle(style: .R12, color: .hex8C8C8C)
                    }
                }
            }
        }
        .frame(height: 110)
    }
}

#Preview {
    GoodsListItemView(imageResource: .airpodPro,
                      goodsName: "에어팟 프로",
                      region: "군자동",
                      pullUp: "3일전",
                      price: "220,000원",
                      interestingCount: 3,
                      viewCount: 13)
}
