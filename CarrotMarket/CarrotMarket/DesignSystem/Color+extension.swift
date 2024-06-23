//
//  Color+extension.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

extension Color {
    static let hex000000 = Color(hex: "000000") // 검정
    static let hex4F4F4F = Color(hex: "4F4F4F") // 지역 회색
    static let hex8C8C8C = Color(hex: "8C8C8C") // 매너온도 회색
    static let hex4AC1DB = Color(hex: "4AC1DB") // 온도 하늘색
    static let hexFF7E36 = Color(hex: "FF7E36") // 오렌지 버튼
}

// Swift 5.8
import SwiftUI

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
