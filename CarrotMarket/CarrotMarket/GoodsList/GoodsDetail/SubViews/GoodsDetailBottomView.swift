//
//  GoodsDetailBottomView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

struct GoodsDetailBottomView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var favorite: Bool
    let price: String
    let isSuggestionPossible: Bool
    
    var body: some View {
        HStack(spacing: 16) {
            Button {
                favorite.toggle()
            } label: {
                Image(systemName: favorite ? "heart.fill" : "heart")
                    .frame(width: 24, height: 24)
                    .foregroundStyle(favorite ? .pink : Color.hex8C8C8C)
            }
            Divider()
                .background(Color.hexEEEEEE)
            
            VStack(alignment: .leading) {
                Text(price)
                    .textStyle(style: .B14, color: .titleColor(forScheme: colorScheme))
                Text(isSuggestionPossible ? "가격 제안 가능" : "가격 제안 불가")
                    .textStyle(style: .B12, color: .hex8C8C8C)
            }
            Spacer()
            Button {
                // action
            } label: {
                Group {
                    Text("채팅하기")
                        .textStyle(style: .B14, color: .white)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                }
                .background(Color.hexFF7E36)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                
            }
            
        }
    }
}

#Preview {
    GoodsDetailBottomView(favorite: .constant(false), price: "360,000원", isSuggestionPossible: false)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .frame(height: 54)
}
