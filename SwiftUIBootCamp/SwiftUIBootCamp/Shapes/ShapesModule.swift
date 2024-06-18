//
//  ShapesModule.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/6/24.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        Circle()
            .stroke(lineWidth: 4.0)
            .fill(.orange)
            .frame(width: 200, height: 200)
        
        Rectangle()
            .fill(.blue)
            .frame(width: 200, height: 200)
            .cornerRadius(5.0)
        
        Capsule()
            .foregroundStyle(Color.purple)
            .frame(width: 200, height: 50)
        
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesModule()
}
