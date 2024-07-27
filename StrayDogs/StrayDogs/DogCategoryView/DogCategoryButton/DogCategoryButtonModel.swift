//
//  DogCategoryButtonModel.swift
//  StrayDogs
//
//  Created by solgoon on 7/27/24.
//

import Foundation
import Kingfisher

final class DogCategoryButtonModel: ObservableObject, Identifiable {
    var id: String { dog.korean } // NOTE: id를 UUID().uuidString로 하면 안됨.
    var dog: Dog
    @Published var isSelected: Bool
    
    var imageApiUrl: URL? {
        if dog == .etc {
            return URL(string: "https://dog.ceo/api/breeds/image/random")
        } else {
            return URL(string: "https://dog.ceo/api/breed/\(dog.rawValue)/images/random")
        }
    }
    @Published var imageUrlString: String?
    
    init(dog: Dog, isSelected: Bool) {
        self.dog = dog
        self.isSelected = isSelected
        fetchData()
    }
    
    func fetchData() {
        guard let url = imageApiUrl else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let decodedData = try JSONDecoder().decode(DogImageURL.self, from: data)
                DispatchQueue.main.async {
                    self.imageUrlString = decodedData.message
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}

struct DogImageURL: Decodable {
    let message: String
}
