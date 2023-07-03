//
//  ContentView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 150)
                            .background(.green)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
