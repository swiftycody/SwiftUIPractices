//
//  FixedSpacer.swift
//  CarrotMarket
//
//  Created by solgoon on 6/23/24.
//

import SwiftUI

// NOTE: Flexlayout의 Spacer가 필요
struct FixedSpacer: View {
    let size: CGFloat
    
    init(_ size: CGFloat = 16) {
        self.size = size
    }
    
    var body: some View {
        Spacer()
            .frame(width: size, height: size)
    }
}

#Preview {
    FixedSpacer(30)
}
