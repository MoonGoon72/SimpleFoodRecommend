//
//  LaunchScreen.swift
//  SimpleFoodRecommend
//
//  Created by 문영균 on 2023/02/26.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        VStack {
            Text("오늘의 밥")
                .font(.system(size: 50))
                .bold()
            Image("LaunchImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
