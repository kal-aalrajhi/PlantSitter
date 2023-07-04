//
//  ContentView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var plants = Plants()
    
    var body: some View {
        NavigationView {
            // Room Scroll
            ZStack {
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
                    // Plant List
                    List {
                        ForEach(plants.plantItems) { plant in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Plant")
                                        .font(.headline)
                                    Text("Plant Type")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("<img>") // add conditional for place holder vs actual image
                                    .frame(width: 50, height: 50)
                                    .background(.teal)
                            }
                        }
                    }
                }
                .navigationTitle("Dashboard")
                VStack {
                    Spacer()
                        Button(action: {
                            // action when button is tapped
                            print("Button tapped!")
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(40)
                                .shadow(color: .gray, radius: 3.0, x: 1.0, y: 1.0)
                                .padding(.trailing)
                        }
//                        .padding(.bottom)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
