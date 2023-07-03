//
//  ContentView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                
                List {
                    ForEach(0..<20) { plant in
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
