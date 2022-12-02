//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Ali serkan Boyracı  on 2.12.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements // to take info freom contentView
    
    var body: some View {
        VStack {
            
            Image(chosenFavoriteElement.imagename)
                 /*.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:UIScreen.main.bounds.width * 0.5,
                       height:UIScreen.main.bounds.height * 0.2) */
                .padding()
                .frame(width: 500.0, height: 200.0) // you can use upper option.
             // to add image
            
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            
            
            Text(chosenFavoriteElement.description).padding()
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: pulpFiction) // to write one of element name
    }
}
