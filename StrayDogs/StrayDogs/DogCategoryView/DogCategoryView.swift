//
//  DogCategoryView.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import SwiftUI

struct DogCategoryView: View {
    var buttonModels: [DogCategoryButtonModel]
    @State var selectedButtonId: String
    
    init(buttonModels: [DogCategoryButtonModel]) {
        self.buttonModels = buttonModels
        let selectedModel = buttonModels.filter { $0.isSelected }.first
        self.selectedButtonId = selectedModel?.id ?? ""
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) {
                FixedSpacer(11)
                ForEach(buttonModels) { buttonModel in
                    DogCategoryButton(model: .init(
                        dog: buttonModel.dog,
                        isSelected: selectedButtonId == buttonModel.id)) {
                        selectedButtonId = buttonModel.id
                    }
                    .padding(.bottom, 15)
                }
                FixedSpacer(11)
            }
        }
    }
}

#Preview {
    DogCategoryView(buttonModels: sampleDogCategoryButtonModels)
}
