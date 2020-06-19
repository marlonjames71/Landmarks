//
//  UserData.swift
//  Landmarks
//
//  Created by Marlon Raskin on 6/19/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
	@Published var showFavoritesOnly = false
	@Published var landmarks = landmarkData
}

