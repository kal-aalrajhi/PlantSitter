//
//  AddPlantView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/6/23.
//

import SwiftUI

struct AddPlantView: View {
    @ObservedObject var plants: Plants
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = ""
    @State private var room = ""
    
    let rooms = ["Bedroom", "Living Room", "Kitchen", "Office", "Patio", "Balcony", "Other"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name (required)", text: $name)
                
                TextField("Plant Type", text: $type)
                
                Picker("Room", selection: $room) {
                    ForEach(rooms, id: \.self) { Text($0) }
                }
            }
            .navigationTitle("Add new plant")
            .toolbar {
                Button("Save") {
                    let plant = Plant(name: name, type: type, room: room, whenLastWatered: "", whenToWaterNext: "")
                }
            }
        }
    }
}

//struct Plant: Identifiable, Codable {
//    var id = UUID()
//    let name: String
//    let type: String
//    let room: String
//    let whenLastWatered: String
//    let whenToWaterNext: String
//}


struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView(plants: Plants())
    }
}
