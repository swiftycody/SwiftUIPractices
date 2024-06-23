//
//  CarrotMarketApp.swift
//  CarrotMarket
//
//  Created by solgoon on 6/22/24.
//

import SwiftUI

@main
struct CarrotMarketApp: App {
    var body: some Scene {
        WindowGroup {
            GoodsDetailView(viewModel: sampleViewModel)
        }
    }
}
