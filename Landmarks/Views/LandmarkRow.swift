//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/3/24.
//

import SwiftUI

struct LandmarkRow: View{
    var landmark: Landmark
    
    var body: some View{
        Text(landmark.name)
    }
}

#Preview {
   // LandmarkRow()

    LandmarkRow(landmark: landmarks[0])
}
