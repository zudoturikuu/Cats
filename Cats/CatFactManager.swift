//
//  CatFactManager.swift
//  Cats
//
//  Created by Wong Jun heng on 16/7/22.
//

import Foundation
import SwiftUI
class CatFactManager: ObservableObject {
    @Published var fact: CatFact?
 func getCatFact() {
 let apiURL = URL(string: "https://catfact.ninja/fact")!
 let request = URLRequest(url: apiURL)
     
     fact = nil

 URLSession.shared.dataTask(with: request) { data, response, error in
 if let data = data {
     print(String(data: data, encoding: .utf8)!)
     let decoder = JSONDecoder()
     DispatchQueue.main.async {
         self.fact = try? decoder.decode(CatFact.self, from: data)
     }
 } //.resume()

 }
 }
    
 }

