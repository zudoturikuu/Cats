//
//  ContentView.swift
//  Cats
//
//  Created by Wong Jun heng on 16/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Facts of cats", systemImage: "doc")
                }
            
            CatImageView()
                .tabItem {
                    Label("Images of cats", systemImage: "photo")
                }
        }
 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
