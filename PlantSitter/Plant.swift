//
//  Plant.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/3/23.
//

import Foundation

struct Plant: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let room: String
    let whenLastWatered: String
    let whenToWaterNext: String
}
