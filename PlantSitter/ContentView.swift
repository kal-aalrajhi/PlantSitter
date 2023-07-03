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
                    ForEach(0..<20) {
                        Text("Plant \($0)")
                            .frame(width: .infinity, height: 50)
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
