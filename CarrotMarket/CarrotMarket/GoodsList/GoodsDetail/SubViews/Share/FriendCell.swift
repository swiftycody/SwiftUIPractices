//
//  FriendCell.swift
//  CarrotMarket
//
//  Created by solgoon on 7/14/24.
//

import SwiftUI

struct FriendCell: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var friendInfo: FriendInfo
    
    var body: some View {
        Button {
            friendInfo.isChecked.toggle()
        } label: {
            HStack {
                Image(friendInfo.image)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(friendInfo.name)
                        .textStyle(style: .B14, color: .titleColor(forScheme: colorScheme))
                    Text("\(friendInfo.followers) Followers")
                        .textStyle(style: .R12, color: .hex4F4F4F)
                }
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(friendInfo.isChecked ? Color.indigo : Color.gray)
            }
        }
    }
}

//#Preview {
//    FriendCell(friendInfo: sampleFriend)
//}
