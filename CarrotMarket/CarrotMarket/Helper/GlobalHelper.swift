//
//  GlobalHelper.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import Foundation
import UIKit

let imageResources: [ImageResource] = [.headphone1, .headphone2, .headphone1]

let sampleGoodsList = [sampleGoodsDetailViewModel, sampleGoodsDetailViewModel2, sampleGoodsDetailViewModel3, sampleGoodsDetailViewModel4, sampleGoodsDetailViewModel5, sampleGoodsDetailViewModel6]

let sampleGoodsDetailViewModel = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo1,
    favorite: false)

let sampleGoodsDetailViewModel2 = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo2,
    favorite: false)

let sampleGoodsDetailViewModel3 = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo3,
    favorite: false)

let sampleGoodsDetailViewModel4 = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo4,
    favorite: false)

let sampleGoodsDetailViewModel5 = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo5,
    favorite: false)

let sampleGoodsDetailViewModel6 = GoodsDetailViewModel(
    userInfo: sampleUserInfoViewModel,
    goodsInfo: sampleGoodsInfo6,
    favorite: false)

let sampleUserInfoViewModel = UserInfo(
    name: "감성탐방러", 
    imageResource: .user1,
    region: "중랑구 면목동",
    temperature: "36.5",
    userGoodsList: [sampleGoodsInfo1, sampleGoodsInfo2])

let sampleGoodsInfos = [sampleGoodsInfo1, sampleGoodsInfo2, sampleGoodsInfo3, sampleGoodsInfo4, sampleGoodsInfo5, sampleGoodsInfo6]

let sampleGoodsInfo1 = GoodsInfo(
    id: "1",
    imageResources: [.headphone2, .headphone1, .headphone3],
    title: "소니 Wh-1000xm5 실버 팝니다.",
    category: "디지털기기",
    price: "360,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 15,
    viewCount: 311, 
    region: "중랑구 면목동")

let sampleGoodsInfo2 = GoodsInfo(
    id: "2",
    imageResources: [.airpod, .airpod2, .airpod3],
    title: "에어팟2 미개봉",
    category: "디지털기기",
    price: "240,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 1,
    viewCount: 51,
    region: "중랑구 면목동")

let sampleGoodsInfo3 = GoodsInfo(
    id: "3",
    imageResources: [.airpodPro, .airpodPro2],
    title: "에어팟 프로 미개봉",
    category: "디지털기기",
    price: "440,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 3,
    viewCount: 30,
    region: "중랑구 면목동")

let sampleGoodsInfo4 = GoodsInfo(
    id: "4",
    imageResources: [.iphone1, .iphone2],
    title: "아이폰+선인장 팔아요.",
    category: "디지털기기",
    price: "880,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 1일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 0,
    viewCount: 0,
    region: "중랑구 면목동")


let sampleGoodsInfo5 = GoodsInfo(
    id: "5",
    imageResources: [.ipad, .ipad2],
    title: "아이패드 팔아요.",
    category: "디지털기기",
    price: "1,000,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 13일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 2,
    viewCount: 10,
    region: "중랑구 면목동")


let sampleGoodsInfo6 = GoodsInfo(
    id: "6",
    imageResources: [.ipad, .ipad2],
    title: "맥북 팔아요.",
    category: "디지털기기",
    price: "2,000,000원",
    isSuggestionPossible: false,
    pullUp: "끌올 4일 전",
    body: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
    interestingCount: 10,
    viewCount: 100,
    region: "중랑구 면목동")
