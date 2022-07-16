//
//  YoMamaManager.swift
//  Cats
//
//  Created by Wong Jun heng on 16/7/22.
//

import Foundation
import SwiftUI
class YoMamaManager: ObservableObject {
    @Published var joke: yoMamaJoke?
 func getYoMamaJoke() {
 let apiURL = URL(string: "https://api.yomomma.info/")!
 let request = URLRequest(url: apiURL)
     
     //joke = nil

 URLSession.shared.dataTask(with: request) { data, response, error in
 if let data = data {
     let decoder = JSONDecoder()
     DispatchQueue.main.async {
         self.joke = try? decoder.decode(yoMamaJoke.self, from: data)
     }
 }

 }
 }
    
}
