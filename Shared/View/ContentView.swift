//
//  ContentView.swift
//  Shared
//
//  Created by Sei Takayuki on 2021/01/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Map", destination: MapView())
                NavigationLink("ScrollViewReader", destination: ScrollViewReaderView())
            }.navigationTitle("UI Catalogs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
