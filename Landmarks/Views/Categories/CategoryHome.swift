//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 육성민 on 7/9/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData

    var body: some View {
        NavigationSplitView {
            modelData.features[0].image
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
            
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
