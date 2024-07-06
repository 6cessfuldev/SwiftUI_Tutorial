//
//  ContentView.swift
//  Landmarks
//
//  Created by 육성민 on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
