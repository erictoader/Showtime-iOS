//
//  AssetCardView.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import SwiftUI

struct AssetCardView<Model: AssetModel> : View {
    
    @State var asset: Model?
    
    var body: some View {
        switch asset {
            case let movieAsset as MovieModel?:
                MovieCardView(asset: movieAsset)
            default:
                Color.clear.frame(width: 1, height: 1)
        }
    }
}

struct AssetCardView_Previews: PreviewProvider {
    static var previews: some View {
        AssetCardView<MovieModel>(asset: nil)
    }
}
