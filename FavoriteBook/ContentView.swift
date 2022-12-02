//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Ali serkan Boyracı  on 1.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List { // to show as a list
            ForEach(myFavorites) { favorite in // like for loop
                Section(header: Text(favorite.title)) { //to show as a section
                    ForEach(favorite.elements) { element in // again like a for loop
                        Text(element.name)
                    }
                }
            }
        }
        
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
