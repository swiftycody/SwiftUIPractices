//
//  GlobalHelper.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import Foundation

struct ImageUrl {
    static let headphone1 = "https://images.unsplash.com/photo-1546435770-a3e426bf472b?q=80&w=2965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    static let headphone2 = "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    static let headphone3 = "https://images.unsplash.com/photo-1491927570842-0261e477d937?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let airpod = "https://images.unsplash.com/photo-1605464315542-bda3e2f4e605?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let airpod2 = "https://images.unsplash.com/photo-1600375226700-5ce19fbe1a6f?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let airpod3 = "https://images.unsplash.com/photo-1588940086836-36c7d89611a0?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let airpodPro = "https://images.unsplash.com/photo-1606741965326-cb990ae01bb2?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let airpodPro2 = "https://images.unsplash.com/photo-1606841837239-c5a1a4a07af7?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let iphone1 = "https://images.unsplash.com/photo-1512054502232-10a0a035d672?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let iphone2 = "https://images.unsplash.com/photo-1523206489230-c012c64b2b48?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    static let user1 = "https://images.unsplash.com/photo-1565225945512-1aa5e39ad5f9?q=80&w=1906&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
}

let imageUrls = [ImageUrl.headphone1, ImageUrl.headphone2, ImageUrl.headphone3]


let sampleUserInfoViewModel = UserInfo(
    name: "감성탐방러",
    region: "중랑구 면목동",
    temperature: "36.5",
    userGoodsList: [sampleGoodsInfo1, sampleGoodsInfo2, sampleGoodsInfo3, sampleGoodsInfo4])

let sampleGoodsInfos = [sampleGoodsInfo1, sampleGoodsInfo2, sampleGoodsInfo3, sampleGoodsInfo4]

let sampleGoodsInfo1 = GoodsInfo(
    id: "1",
    imageUrls: [ImageUrl.headphone1, ImageUrl.headphone2, ImageUrl.headphone3],
    title: "소니 Wh-1000xm5 실버 팝니다.",
    category: "디지털기기",
    price: "360,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 15,
    viewCount: 311)

let sampleGoodsInfo2 = GoodsInfo(
    id: "2",
    imageUrls: [ImageUrl.airpod, ImageUrl.airpod2, ImageUrl.airpod3],
    title: "에어팟 미개봉",
    category: "디지털기기",
    price: "240,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 1,
    viewCount: 51)

let sampleGoodsInfo3 = GoodsInfo(
    id: "3",
    imageUrls: [ImageUrl.airpodPro, ImageUrl.airpodPro2],
    title: "에어팟 프로 미개봉",
    category: "디지털기기",
    price: "440,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 1,
    viewCount: 51)

let sampleGoodsInfo4 = GoodsInfo(
    id: "4",
    imageUrls: [ImageUrl.iphone1, ImageUrl.iphone2],
    title: "에어팟 프로 미개봉",
    category: "디지털기기",
    price: "440,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 1,
    viewCount: 51)
