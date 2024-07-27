//
//  ContentView.swift
//  StrayDogs
//
//  Created by solgoon on 7/20/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                        .frame(width: 38, height: 38)
                        .foregroundStyle(Color.white)
                        .shadow(radius: 12)
                    Image(systemName: "line.3.horizontal")
                }
                Spacer()
                VStack {
                    HStack {
                        Text("현재 위치")
                            .textStyle(style: .R14, color: .hex989CA3)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .foregroundStyle(Color.hex989CA3)
                    }
                    Text("광진구 구의동 아차산로 50길")
                        .textStyle(style: .B15, color: .hexF2724C)
                }
                Spacer()
                Image(.user1)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 38, height: 38)
                    .cornerRadius(12, corners: .allCorners)
            }
            .padding(.horizontal, 25)
            ScrollView {
                FixedSpacer(32)
                VStack(spacing: 0) {
                    HStack {
                        Text("주변에 유기견을 보호하고 있어요.".forceCharWrapping)
                            .textStyle(style: .B30, color: .hex000000)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.horizontal, 25)
                    FixedSpacer(19)
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .stroke(Color.gray, lineWidth: 1)
                                .foregroundStyle(Color.hexEFEFEF)
                                .background(Color.hexFCFCFD)
                                .frame(height: 51)
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(Color.hex9AA0B4)
                                Text("뭔가를 검색...")
                                    .foregroundStyle(Color.hex9AA0B4)
                                Spacer()
                            }
                            .padding()
                        }
                        Button {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                                    .frame(width: 51, height: 51)
                                    .foregroundStyle(Color.white)
                                    .shadow(color: .hexE9EDF2, radius: 12)
                                Image(.pngControlButton)
                            }
                        }
                    }
                    .padding(.horizontal, 25)
                    FixedSpacer(30)
                    DogCategoryView(buttonModels: sampleDogCategoryButtonModels)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
