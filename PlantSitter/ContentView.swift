//
//  ContentView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var plants = Plants()
    @State private var showingAddPlantView = false
    
    var body: some View {
        NavigationView {
            // Room Scroll
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {
                            Text("Room \($0)")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .frame(width: 150, height: 150)
                                .background(.green)
                        }
                    }
                }
                .padding()
                // Plant List
                List {
                    ForEach(plants.plantItems) { plant in
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(plant.name)")
                                    .font(.headline)
                                Text("\(plant.room)")
                                    .font(.subheadline)
                            }
                            Spacer()
                            Text("<img>") // add conditional for place holder vs actual image
                                .frame(width: 50, height: 50)
                                .background(.teal)
                        }
                    }
                    .onDelete(perform: removeItems)
                }
            }
            .navigationTitle("Dashboard")
            .toolbar {
                Button {
                    showingAddPlantView = true
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(40)
                        .shadow(color: .gray, radius: 3.0, x: 1.0, y: 1.0)
                }
            }
        }
        .sheet(isPresented: $showingAddPlantView) {
            AddPlantView(plants: plants)
        }
    }
    // Functions here
    func removeItems(at offsets: IndexSet) {
        plants.plantItems.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
