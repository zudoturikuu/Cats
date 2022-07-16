//
//  CatFactView.swift
//  Cats
//
//  Created by Wong Jun heng on 16/7/22.
//

import SwiftUI

struct CatFactView: View {
    @StateObject var catFactManager = CatFactManager()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                catFactManager.getCatFact()
            }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
