//
//  MapView.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

private var region: MKCoordinateRegion{
    MKCoordinateRegion(center: CLLocationCoordinate2DMake(34.011_286, -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
}

#Preview {
    MapView()
}
