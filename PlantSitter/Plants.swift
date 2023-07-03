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
    
}
