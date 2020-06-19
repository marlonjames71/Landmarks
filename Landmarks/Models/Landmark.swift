//
//  Landmark'.swift
//  Landmarks
//
//  Created by Marlon Raskin on 6/18/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
	var name: String
	var category: Category
	var city: String
	var state: String
	var id: Int
	var isFeatured: Bool
	var isFavorite: Bool
	var park: String
	fileprivate var coordinates: Coordinates
	fileprivate var imageName: String

	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: coordinates.latitude,
							   longitude: coordinates.longitude)
	}

	enum Category: String, CaseIterable, Codable, Hashable {
		case featured = "Featured"
		case lakes = "Lakes"
		case rivers = "Rivers"
		case mountains = "Mountains"
	}
}


extension Landmark {
	var image: Image {
		ImageStore.shared.image(name: imageName)
	}
}


struct Coordinates: Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
