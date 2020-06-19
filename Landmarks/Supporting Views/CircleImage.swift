//
//  CircleImage.swift
//  Landmarks
//
//  Created by Marlon Raskin on 6/18/20.
//  Copyright © 2020 Marlon Raskin. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
    var body: some View {
		image
			.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
			.overlay(Circle().stroke(Color(.imageBorderColor ?? .white), lineWidth: 4))
		.shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
