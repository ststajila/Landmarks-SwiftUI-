//
//  Landmark.swift
//  Landmarks
//
//  Created by STANISLAV STAJILA on 4/3/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
            Image(imageName)
        }
    
    private var coordinate: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
