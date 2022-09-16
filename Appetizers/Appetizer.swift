//
//  Appetizer.swift
//  Appetizers
//
//  Created by Yernar Masujima on 9/11/22.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1, name: "Test", description: "Test Test", price: 10, imageURL: "", calories: 4, protein: 8, carbs: 5)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
