//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Timur Begishev on 03.02.2021.
//  Copyright © 2021 Ivan Akulov. All rights reserved.
//

import Foundation

// MARK: - Actions
struct CurrentWeatherData: Codable {
	let name: String
	let main: Main
	let weather: [Weather]
}

struct Main: Codable {
	let temp: Double
	let feelsLike: Double

	enum CodingKeys: String, CodingKey {
		case temp
		case feelsLike = "feels_like"
	}
}

struct Weather: Codable {
	let id: Int
}
