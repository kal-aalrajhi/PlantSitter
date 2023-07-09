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
    
    let rooms = ["Bedroom", "Living Room", "Kitchen", "Office", "Patio", "Balcony", "Bathroom", "Other"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name (required)", text: $name)
                    
                    TextField("Plant Type", text: $type)
                    
                    Picker("Room", selection: $room) {
                        ForEach(rooms, id: \.self) { Text($0) }
                    }
                }
                
                Section {
                    Button("Save") {
                        let newPlant = Plant(name: name, type: type, room: room)
                        plants.plantItems.append(newPlant)
                        dismiss()
                    }
                }
                .disabled(name.isEmpty)
            }
            .navigationTitle("Add new plant")
        }
    }
}

struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView(plants: Plants())
    }
}
