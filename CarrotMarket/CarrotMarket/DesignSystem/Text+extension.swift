//
//  Text+extension.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

enum TextStyle {
    case R10
    case R12
    case R14
    case R20
    case B12
    case B14
    case B18
    
    var size: CGFloat {
        switch self {
        case .R10: return 10
        case .R12: return 12
        case .R14: return 14
        case .R20: return 20
        case .B12: return 12
        case .B14: return 14
        case .B18: return 18
        }
    }
    
    var weight: Font.Weight {
        switch self {
        case .B12, .B14, .B18: return .bold
        case .R10, .R12, .R14, .R20: return .regular
        }
    }
}

struct SetTextStyle: ViewModifier {
    let style: TextStyle
    func body(content: Content) -> some View {
        return content
            .font(.system(size: style.size , weight: style.weight))
    }
}

extension Text {
    func textStyle(style: TextStyle, color: Color = .black) -> some View {
        return self
            .modifier(SetTextStyle(style: style))
            .foregroundStyle(color)
    }
}
