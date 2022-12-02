//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Ali serkan Boyracı  on 2.12.2022.
//

import Foundation
import SwiftUI

// identifible = to give ID in list manually

struct FavoriteModel : Identifiable {
    var id = UUID() // to give id automatically, if you define as a Int you put IDs manually
    var title : String
    var elements : [FavoriteElements]     // lots of specs // it will be nested
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

let mogollar = FavoriteElements(name: "Mogollar", imagename: "mogollar", description: "no 1 Favorite music band")
let duman = FavoriteElements(name: "Duman", imagename: "duman", description: "no 2 Favorite music band")
let pinhani = FavoriteElements(name: "Pinhani", imagename: "pinhani", description: "no 3 Favorite music band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [mogollar, duman, pinhani])
