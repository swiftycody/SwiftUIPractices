//
//  DogCategoryButton.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import Kingfisher
import SwiftUI

struct DogCategoryButton: View {
    @ObservedObject var model: DogCategoryButtonModel
    @State var isLoading = true
    
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
                    Group {
                        if let urlString = model.imageUrlString {
                            KFImage(URL(string: urlString))
                                .onProgress { _, _ in
                                    isLoading = true
                                }
                                .onSuccess { result in
                                    isLoading = false
                                }
                                .onFailure { error in
                                    print("\(error)")
                                    isLoading = false
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 49, height: 49)
                                .clipShape(Circle())
                        } else {
                            Circle()
                                .foregroundStyle(Color.hexD3D1D8)
                                .frame(width: 49, height: 49)
                                .onAppear {
                                    isLoading = true
                                }
                        }
                    }
                    FixedSpacer(12)
                    Text(model.dog.korean)
                        .textStyle(style: .B11, color: model.isSelected ? .white : .gray)
                    Spacer()
                }
                .padding(4.5)
            }
            .redacted(reason: isLoading ? .placeholder : [])
            .frame(height: 98)
        }
    }
}


#Preview {
    DogCategoryButton(model: .init(dog: .bulldog, isSelected: true)) {
        
    }
}
