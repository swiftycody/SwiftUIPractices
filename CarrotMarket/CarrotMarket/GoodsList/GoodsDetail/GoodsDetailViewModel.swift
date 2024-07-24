//
//  GoodsDetailViewModel.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import Foundation

class GoodsDetailViewModel: ObservableObject, Identifiable {
    var id: String { UUID().uuidString }
    let userInfo: UserInfo
    let goodsInfo: GoodsInfo
    @Published var favorite: Bool
    
    init(userInfo: UserInfo, goodsInfo: GoodsInfo, favorite: Bool) {
        self.userInfo = userInfo
        self.goodsInfo = goodsInfo
        self.favorite = favorite
    }
}

struct UserInfo {
    let name: String
    let imageResource: ImageResource
    let region: String
    let temperature: String
    let userGoodsList: [GoodsInfo]
}

class GoodsInfo: ObservableObject, Identifiable {
    let id: String
    let imageResources: [ImageResource]
    let title: String
    let category: String
    let price: String
    let isSuggestionPossible: Bool
    let pullUp: String
    let body: String
    let interestingCount: Int
    let viewCount: Int
    let region: String
    
    init(id: String, imageResources: [ImageResource], title: String, category: String, price: String, isSuggestionPossible: Bool, pullUp: String, body: String, interestingCount: Int, viewCount: Int, region: String) {
        self.id = id
        self.imageResources = imageResources
        self.title = title
        self.category = category
        self.price = price
        self.isSuggestionPossible = isSuggestionPossible
        self.pullUp = pullUp
        self.body = body
        self.interestingCount = interestingCount
        self.viewCount = viewCount
        self.region = region
    }
}
