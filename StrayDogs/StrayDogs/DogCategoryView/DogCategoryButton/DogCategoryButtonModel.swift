//
//  DogCategoryButtonModel.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import Foundation

final class DogCategoryButtonModel: ObservableObject, Identifiable {
    var id: String { dog.korean } // NOTE: id를 UUID().uuidString로 하면 안됨.
    var dog: Dog
    var isSelected: Bool
    
    init(dog: Dog, isSelected: Bool) {
        self.dog = dog
        self.isSelected = isSelected
    }
}
