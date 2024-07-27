//
//  DogCategoryButton.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import SwiftUI

struct DogCategoryButton: View {
    var model: DogCategoryButtonModel
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Capsule()
                    .foregroundStyle(model.isSelected ? Color.hexF2724C : .white)
                    .frame(width: 58, height: 98)
                    .shadow(color: model.isSelected ? Color.hexF2724C.opacity(0.4) : .hexD3D1D8.opacity(0.4),
                            radius: 6,
                            y: 6)
                VStack(spacing: 0) {
                    Circle()
                        .foregroundStyle(model.isSelected ? .white : .gray)
                        .frame(width: 49)
                    FixedSpacer(12)
                    Text(model.dog.korean)
                        .textStyle(style: .B11, color: model.isSelected ? .white : .gray)
                    Spacer()
                }
                .padding(4.5)
            }
            .frame(height: 98)
        }
    }
}


#Preview {
    DogCategoryButton(model: .init(dog: .bulldog, isSelected: true)) {
        
    }
}
