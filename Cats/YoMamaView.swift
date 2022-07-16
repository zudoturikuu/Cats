//
//  YoMamaView.swift
//  Cats
//
//  Created by Wong Jun heng on 16/7/22.
//

import SwiftUI

struct YoMamaView: View {
    
    @StateObject var yomamaManager = YoMamaManager()
    
    var body: some View {
        VStack {
            if let joke = YoMamaManager.joke {
                Text(joke.joke)
                    .padding()
         } else {
         ProgressView()
         .progressViewStyle(.circular)
         }
         }
         .onAppear {
             yomamaManager.getYoMamaJoke()
         }
}
    }


struct YoMamaView_Previews: PreviewProvider {
    static var previews: some View {
        YoMamaView()
    }
}
