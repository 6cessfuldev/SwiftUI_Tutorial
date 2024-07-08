//
//  AnimationTest.swift
//  Landmarks
//
//  Created by 육성민 on 7/8/24.
//

import SwiftUI

struct AnimationTest: View {
    @State private var opacity = 1.0

    var body: some View {
        Text("Hello, World!")
            .opacity(opacity)
            .animation(.easeInOut)
            .onTapGesture {
                print("click")
                opacity = opacity == 1.0 ? 0.2 : 1.0
            }
    }
}

#Preview {
    AnimationTest()
}
