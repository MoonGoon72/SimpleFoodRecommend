//
//  SimpleFoodRecommendApp.swift
//  SimpleFoodRecommend
//
//  Created by 문영균 on 2023/02/22.
//

import SwiftUI

@main
struct SimpleFoodRecommendApp: App {
    /// Launch Screen 딜레이주기, but 딜레이주는건 권장하지 않음
    init() {
            Thread.sleep(forTimeInterval: 2)
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
