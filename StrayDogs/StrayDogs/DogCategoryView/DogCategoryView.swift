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
                ForEach(buttonModels, id: \.id) { buttonModel in
                    DogCategoryButton(model: buttonModel) { // NOTE: model을 주입할 때 새로 init을 하면 id가 같아도 매번 새로운 View인 것처럼 처리됨.
                        setSelected(id: buttonModel.id)
                    }
                    .padding(.bottom, 15)
                }
                FixedSpacer(11)
            }
        }
    }
    
    func setSelected(id: String) {
        buttonModels.forEach { buttonModel in
            buttonModel.isSelected = buttonModel.id == id
        }
    }
}

#Preview {
    DogCategoryView(buttonModels: sampleDogCategoryButtonModels)
}
