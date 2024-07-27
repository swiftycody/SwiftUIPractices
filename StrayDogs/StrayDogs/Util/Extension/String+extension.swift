//
//  String+extension.swift
//  StrayDogs
//
//  Created by solgoon on 7/25/24.
//

import Foundation

extension String {
    // NOTE: SwiftUI의 Text는 linebreakMode가 없다?
    var forceCharWrapping: Self {
        self.map({ String($0) }).joined(separator: "\u{200B}") // 200B: 가로폭 없는 공백문자
    }
}
