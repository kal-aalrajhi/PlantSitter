//
//  Plants.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/3/23.
//

import Foundation

class Plants: ObservableObject {
    @Published var plantItems = [Plant]() {
        didSet {
            if let encoded = try? JSONEncoder().encode([plantItems]) {
                UserDefaults.standard.set(encoded, forKey: "PlantItems")
            }
        }
    }
    
    // Initializer will help us 'reload' our encoded data from JSON to Swift to have data persistance
    init() {
        if let savedPlantItems = UserDefaults.standard.data(forKey: "PlantItems") {
            if let decodedItems = try? JSONDecoder().decode([Plant].self, from: savedPlantItems) {
                plantItems = decodedItems
                return
            }
        }
    }
}
