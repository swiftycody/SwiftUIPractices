//
//  GoodsListView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/25/24.
//

import SwiftUI

struct GoodsListView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(sampleGoodsInfos) { goodsInfo in
                        NavigationLink {
                            GoodsDetailView(viewModel: sampleGoodsDetailViewModel)
                        } label: {
                            VStack(spacing: 0) {
                                FixedSpacer(16)
                                GoodsListItemView(
                                    imageResource: goodsInfo.imageResources.first ?? .carrot,
                                    goodsName: goodsInfo.title,
                                    region: goodsInfo.region,
                                    pullUp: goodsInfo.pullUp,
                                    price: goodsInfo.price,
                                    interestingCount: goodsInfo.interestingCount,
                                    viewCount: goodsInfo.viewCount
                                )
                                FixedSpacer(16)
                                Divider()
                                    .background(Color.hexEEEEEE)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .navigationBar(leftItems: [.region(title: "군자동", action: { })],
                           rightItems: [.search(action: { }),
                                        .menu(action: { }),
                                        .notification(action: { })],
                           background: .backgroundColor(forScheme: colorScheme),
                           colorTheme: .titleColor(forScheme: colorScheme))
        }
        .background(Color.backgroundColor(forScheme: colorScheme))
    }
}

#Preview {
    GoodsListView()
}
