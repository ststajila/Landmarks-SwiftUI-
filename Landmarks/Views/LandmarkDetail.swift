//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/5/24.
//

import Foundation
import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }.font(.subheadline).foregroundStyle(.secondary)
                Divider()
                Text("About Turtule Rock").font(.title2)
                Text("Descriptive Text Goes Here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
