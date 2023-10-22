//
//  Warranties.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on October 18, 2023
//
import Foundation

struct Warranties: Codable {

	var type: String?
	var miles: String?
	var months: String?

	private enum CodingKeys: String, CodingKey {
		case type = "type"
		case miles = "miles"
		case months = "months"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		type = try? values.decodeIfPresent(String.self, forKey: .type)
		miles = try? values.decodeIfPresent(String.self, forKey: .miles)
		months = try? values.decodeIfPresent(String.self, forKey: .months)
	}

}
