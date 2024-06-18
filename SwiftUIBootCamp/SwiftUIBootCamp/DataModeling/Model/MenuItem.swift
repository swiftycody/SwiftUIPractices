//
//  MenuItem.swift
//  SwiftUIBootCamp
//
//  Created by solgoon on 6/9/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID().uuidString
    let imageName: String
    let type: String
    let restautantName: String
}
