//
//  CircleImage.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/2/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").clipShape(Circle()).overlay {
            Circle().stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
