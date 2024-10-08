//
//  GoodsDetailView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

struct GoodsDetailView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: GoodsDetailViewModel
    
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            ScrollView([.vertical]) {
                VStack {
                    PagingImageScrollView(imageResources: viewModel.goodsInfo.imageResources)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                    
                    FixedSpacer(16)
                    
                    UserInfoView(name: viewModel.userInfo.name,
                                 imageResource: viewModel.userInfo.imageResource,
                                 region: viewModel.userInfo.region,
                                 temperature: viewModel.userInfo.temperature)
                    .padding(.horizontal)
                    
                    Divider()
                        .background(Color.hexEEEEEE)
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
                        .background(Color.hexEEEEEE)
                        .padding(16)
                    
                    Button {
                        // 눌렀을 때 action
                    } label: {
                        Text("이 게시글 신고하기")
                            .textStyle(style: .B14, color: .titleColor(forScheme: colorScheme))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.titleColor(forScheme: colorScheme))
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .background(Color.hexEEEEEE)
                        .padding(16)
                    
                    Button {
                        // 눌렀을 때 action
                    } label: {
                        Text("\(viewModel.userInfo.name)님의 판매 상품")
                            .textStyle(style: .B14, color: .titleColor(forScheme: colorScheme))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.titleColor(forScheme: colorScheme))
                    }
                    .padding(.horizontal)
                    
                    FixedSpacer(16)
                    
                    GoodsGridView(goodsItems: viewModel.userInfo.userGoodsList)
                        .padding(.horizontal)
                    
                    Divider()
                        .background(Color.hexEEEEEE)
                        .padding(16)
                    
                    HStack {
                        Text("이 글과 함께 봤어요")
                            .textStyle(style: .B14, color: .titleColor(forScheme: colorScheme))
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    FixedSpacer(16)
                    
                    GoodsGridView(goodsItems: sampleGoodsInfos)
                        .padding(.horizontal)
                    
                    FixedSpacer(20)
                }
            }
            
            Divider()
                .background(Color.hexEEEEEE)
            
            GoodsDetailBottomView(favorite: $viewModel.favorite,
                                  price: viewModel.goodsInfo.price,
                                  isSuggestionPossible: viewModel.goodsInfo.isSuggestionPossible)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .frame(height: 54)
        }
        .navigationBar(isOnZStack: true,
                       leftItems: [.back,
                                   .home(action: { })],
                       rightItems: [.share(action: { isShowing = true }),
                                    .goodsDetailMenu(action: { })],
                       background: .clear,
                       colorTheme: .white)
        .bottomSheet(isShowing: $isShowing) {
//            Text("매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 매우 긴 텍스트 ")
//                .padding()
            ShareToFriendsView(friendsList: sampleFriends, isShowing: $isShowing)
        }
    }
}

#Preview {
    GoodsDetailView(viewModel: sampleGoodsDetailViewModel)
}
