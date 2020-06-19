//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Marlon Raskin on 6/19/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		NavigationView {
			List(landmarkData) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
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
		}
    }
}
