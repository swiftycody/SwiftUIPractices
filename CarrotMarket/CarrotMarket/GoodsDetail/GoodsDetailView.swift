//
//  GoodsDetailView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI
import Kingfisher

let sampleViewModel = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo1,
    favorite: false)

struct GoodsDetailView: View {
    @ObservedObject var viewModel: GoodsDetailViewModel
    
    var body: some View {
        ScrollView([.vertical]) {
            VStack {
                PagingImageScrollView(imageUrls: viewModel.goodsInfo.imageUrls)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                
                FixedSpacer(16)
                
                UserInfoView(name: viewModel.userInfo.name,
                             region: viewModel.userInfo.region,
                             temperature: viewModel.userInfo.temperature)
                    .padding(.horizontal)
                
                Divider()
                    .padding(16)
                
                GoodsInfoBodyView(
                    title: viewModel.goodsInfo.title,
                    category: viewModel.goodsInfo.category,
                    price: viewModel.goodsInfo.price,
                    isSuggestionPossible: false,
                    pullUp: viewModel.goodsInfo.pullUp,
                    description: viewModel.goodsInfo.body,
                    interestingCount: viewModel.goodsInfo.interestingCount,
                    viewCount: viewModel.goodsInfo.viewCount)
                    .padding(.horizontal)
                
                Divider()
                    .padding(16)
                
                Button {
                    // 눌렀을 때 action
                } label: {
                    Text("이 게시글 신고하기")
                        .textStyle(style: .B14)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.hex000000)
                }
                .padding(.horizontal)
                
                Divider()
                    .padding(16)
                
                Button {
                    // 눌렀을 때 action
                } label: {
                    Text("\(viewModel.userInfo.name)님의 판매 상품")
                        .textStyle(style: .B14)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.hex000000)
                }
                .padding(.horizontal)
                
                FixedSpacer(16)
                
                GoodsGridView(goodsItems: viewModel.userInfo.userGoodsList)
                    .padding(.horizontal)
                
                Divider()
                    .padding(16)
                
                HStack {
                    Text("이 글과 함께 봤어요")
                        .textStyle(style: .B14)
                    Spacer()
                }
                .padding(.horizontal)
                
                FixedSpacer(16)
                
                GoodsGridView(goodsItems: sampleGoodsInfos)
                    .padding(.horizontal)
                
                FixedSpacer(20)
            }
        }
        .ignoresSafeArea(edges: .top)
        
        Divider()
        
        GoodsDetailBottomView(favorite: $viewModel.favorite,
                              price: viewModel.goodsInfo.price,
                              isSuggestionPossible: viewModel.goodsInfo.isSuggestionPossible)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .frame(height: 54)
    }
}

#Preview {
    GoodsDetailView(viewModel: sampleViewModel)
}
