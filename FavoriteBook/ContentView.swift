//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Ali serkan Boyracı  on 1.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            List { // to show as a list
                ForEach(myFavorites) { favorite in // like for loop
                    Section(header: Text(favorite.title)) { //to show as a section
                        ForEach(favorite.elements) { element in // again like a for loop
                            NavigationLink(destination: DetailsView()) { // to go to the DatailsView.
                                //
                                Text(element.name) // if we dont add NavigationView, we cant click elements and see them in blurred.
                                
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("Favorite Book")) // add list curly braces.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
