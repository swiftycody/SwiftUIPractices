//
//  Dog+DTO.swift
//  StrayDogs
//
//  Created by solgoon on 7/26/24.
//

import Foundation

enum Dog: String, CaseIterable {
    case bulldog
    case corgi
    case dalmatian
    case hound
    case husky
    case malamute
    case maltese
    case mix
    case pomeranian
    case poodle
    case schnauzer
    case shiba
    case shihtzu
    case etc
    
    var korean: String {
        switch self {
        case .bulldog:
            "불독"
        case .corgi:
            "코기"
        case .dalmatian:
            "달마시안"
        case .hound:
            "하운드"
        case .husky:
            "허스키"
        case .malamute:
            "말라뮤트"
        case .maltese:
            "말티즈"
        case .mix:
            "믹스"
        case .pomeranian:
            "포메라이안"
        case .poodle:
            "푸들"
        case .schnauzer:
            "슈나우저"
        case .shiba:
            "시바"
        case .shihtzu:
            "시츄"
        case .etc:
            "기타"
        }
    }
}
