//
//  CarouselCardView.swift
//  Showtime
//
//  Created by Eric Toader on 12.09.2023.
//

import SwiftUI

struct CarouselCardView: View {
    
    @State var asset: (any AssetModel)?
    
    var body: some View {
        AsyncImage(url: asset?.posterUrl)
            .frame(height: 300)
            .roundedCorners()
            .padding()
    }
}

struct CarouselCardView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselCardView()
    }
}
