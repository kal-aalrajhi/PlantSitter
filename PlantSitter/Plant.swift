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
    var whenLastWatered: String
    var whenToWaterNext: String

    init(name: String, type: String, room: String, whenLastWatered: String = "", whenToWaterNext: String = "") {
        self.name = name
        self.type = type
        self.room = room
        self.whenLastWatered = whenLastWatered
        self.whenToWaterNext = whenToWaterNext
    }
}

// use a convenience initializer
extension Plant {
    init(name: String, type: String, room: String) {
        self.init(name: name, type: type, room: room, whenLastWatered: "", whenToWaterNext: "")
    }
}


