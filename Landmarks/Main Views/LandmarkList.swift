//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Marlon Raskin on 6/19/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	@EnvironmentObject var userData: UserData

    var body: some View {
		NavigationView {
			List {
				Toggle(isOn: $userData.showFavoritesOnly) {
					Text("Favorites Only")
				}

				ForEach(userData.landmarks) { landmark in
					if !self.userData.showFavoritesOnly || landmark.isFavorite {
						NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
							LandmarkRow(landmark: landmark)
						}
					}
				}
			}
			.navigationBarTitle(Text("Landmarks"))
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
		ForEach(["iPhone 8", "iPhone XS Max"], id: \.self) { deviceName in
			LandmarkList()
				.previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
				.environmentObject(UserData())
		}
    }
}
