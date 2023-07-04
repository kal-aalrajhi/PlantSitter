//
//  TestView.swift
//  PlantSitter
//
//  Created by Dr Cpt Blackbeard on 7/4/23.
//

import SwiftUI

struct TestView: View {
    @State private var showModal = false
    var body: some View {
        TabView {
            NavigationView {
                Text("First View")
                    .navigationTitle("First")
            }
            .tabItem {
                Image(systemName: "1.square.fill")
                Text("First")
            }
            
            Button(action: {
                showModal = true
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .frame(width: 50, height: 50)
            }
            .tabItem {
                Image(systemName: "plus.app.fill")
            }
            .sheet(isPresented: $showModal, content: {
                Text("Modal View")
            })
            
            NavigationView {
                Text("Second View")
                    .navigationTitle("Second")
            }
            .tabItem {
                Image(systemName: "2.square.fill")
                Text("Second")
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
