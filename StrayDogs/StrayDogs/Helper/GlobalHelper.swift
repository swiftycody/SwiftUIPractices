//
//  GlobalHelper.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import Foundation

var sampleDogCategoryButtonModels: [DogCategoryButtonModel] = Dog.allCases.map {
    .init(dog: $0, isSelected: $0 == .bulldog ? true : false)
}
