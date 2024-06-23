//
//  GoodsInfoBodyView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

struct GoodsInfoBodyView: View {
    let title: String
    let category: String
    let price: String
    let isSuggestionPossible: Bool
    let pullUp: String
    let description: String
    let interestingCount: Int
    let viewCount: Int
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .textStyle(style: .B18)
                
                FixedSpacer(8)
                
                HStack(spacing: 2) {
                    Text(category)
                        .underline()
                        .textStyle(style: .R12, color: .hex8C8C8C)
                    Text("·")
                        .textStyle(style: .R12, color: .hex8C8C8C)
                    Text(pullUp)
                        .textStyle(style: .R12, color: .hex8C8C8C)
                }
                
                FixedSpacer(16)
                
                Text(description)
                
                FixedSpacer(16)
                
                HStack(spacing: 2) {
                    Text("관심 \(interestingCount)")
                        .textStyle(style: .R12, color: .hex8C8C8C)
                    Text("·")
                        .textStyle(style: .R12, color: .hex8C8C8C)
                    Text("조회 \(viewCount)")
                        .textStyle(style: .R12, color: .hex8C8C8C)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    GoodsInfoBodyView(
        title: "소니 Wh-1000xm5 실버 팝니다.",
        category: "디지털기기",
        price: "360,000원",
        isSuggestionPossible: false,
        pullUp: "끌올 1일 전",
        description: "8/31일 해외직구한\n한달도 안된제품 입니다.\n박풀 S급입니다.",
        interestingCount: 15,
        viewCount: 311)
}
