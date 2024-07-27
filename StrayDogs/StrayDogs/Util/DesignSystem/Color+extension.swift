//
//  Color+extension.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

extension Color {
    static func backgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        let darkColor = Color(#colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1411764706, alpha: 1))
        
        switch scheme {
        case .light : return lightColor
        case .dark : return darkColor
        @unknown default: return lightColor
        }
    }
    
    static func titleColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        let darkColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
        switch scheme {
        case .light : return lightColor
        case .dark : return darkColor
        @unknown default: return lightColor
        }
    }
}


extension Color {
    static let hex000000 = Color(hex: "000000") // 검정
    static let hex989CA3 = Color(hex: "989CA3") // deliver to 회색
    static let hexF2724C = Color(hex: "F2724C") // 지역 오렌지색
    static let hexE9EDF2 = Color(hex: "E9EDF2") // 그림자 색
    static let hexEFEFEF = Color(hex: "EFEFEF") // 검색바 테두리색
    static let hexFCFCFD = Color(hex: "FCFCFD") // 검색바 배경색
    static let hex9AA0B4 = Color(hex: "9AA0B4") // 검색바 placeholder색
    static let hexD3D1D8 = Color(hex: "D3D1D8") // 카테고리 미선택 그림자색
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
