//
//  UserInfoView.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI
import Kingfisher

struct UserInfoView: View {
    let name: String
    let region: String
    let temperature: String
    
    var body: some View {
        HStack {
            // 사용자 정보
            KFImage(URL(string: ImageUrl.user1))
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .textStyle(style: .B18, color: .hex000000)
                Text(region)
                    .textStyle(style: .R12, color: .hex4F4F4F)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                HStack(spacing: 4) {
                    VStack(alignment: .trailing, spacing: 2) {
                        Text("\(temperature)°C")
                            .textStyle(style: .B14, color: .hex4AC1DB)
                        ProgressView(value: 5, total: 10)
                            .frame(width: 46, height: 2)
                            .tint(Color.hex4AC1DB)
                    }
                    Text("🙂")
                        .textStyle(style: .R20)
                }
                Text("매너온도")
                    .underline()
                    .textStyle(style: .R10, color: .hex8C8C8C)
                
            }
        }
    }
}

#Preview {
    UserInfoView(
        name: "감성탐방러",
        region: "중랑구 면목동",
        temperature: "36.5")
}
