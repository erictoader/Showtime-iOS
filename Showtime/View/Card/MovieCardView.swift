//
//  MovieCardView.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import SwiftUI
import SwiftUI_Shimmer

struct MovieCardView: View {
    
    @State var asset: MovieModel?
    
    var body: some View {
        AsyncImage(url: asset?.posterUrl)
            .frame(width: 160, height: 90)
            .roundedCorners()
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView()
    }
}
