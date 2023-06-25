//
//  ContentView.swift
//  iDine
//
//  Created by Finn on 6/25/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack{
            List {
                ForEach(menu){ section in
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
            }
            .navigationTitle("Ur Mom")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
