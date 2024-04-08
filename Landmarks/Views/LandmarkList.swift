//
//  LandmarkList.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/5/24.
//

import SwiftUI


struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filterdLandmarks: [Landmark]{
        landmarks.filter { Landmark in
            (!showFavoritesOnly || Landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Show Favorites Only")
                })
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
}
