//
//  ShareToFriendsView.swift
//  CarrotMarket
//
//  Created by solgoon on 7/14/24.
//

import SwiftUI

class FriendInfo: ObservableObject, Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var image: ImageResource
    var followers: Int
    @Published var isChecked: Bool
    
    init(name: String, image: ImageResource, followers: Int = 0, isChecked: Bool = false) {
        self.name = name
        self.image = image
        self.followers = followers
        self.isChecked = isChecked
    }
}

struct ShareToFriendsView: View {
    @Environment(\.colorScheme) var colorScheme
    var friendsList: [FriendInfo]
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("친구에게 공유")
                        .textStyle(style: .B18, color: .titleColor(forScheme: colorScheme))
                    Spacer()
                }
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(friendsList) { friendInfo in
                            FriendCell(friendInfo: friendInfo)
                        }
                        FixedSpacer(64)
                    }
                }
            }
//            .frame(maxHeight: UIScreen.main.bounds.height - 250.0)
            
            VStack {
                Spacer()
                Button {
                    isShowing.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                            .frame(height: 52)
                            .foregroundStyle(Color.indigo)
                        Text("보내기")
                            .textStyle(style: .B18, color: .white)
                        HStack {
                            Spacer()
                            Image(systemName: "arrow.forward.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(Color.white)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.horizontal, 30)
                
            }
        }
        .frame(maxHeight: UIScreen.main.bounds.height - 250.0)
        .fixedSize(horizontal: false, vertical: true)
        .background(Color.backgroundColor(forScheme: colorScheme))
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ShareToFriendsView(friendsList: sampleFriends, isShowing: .constant(true))
}
