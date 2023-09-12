//
//  RowView.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import SwiftUI

struct RowView<Model: AssetModel>: View {
    
    @State var rowModel: RowModel<Model>? {
        didSet { isLoading = false }
    }
    @State private var isLoading: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.small) {
            
            RowTitleView(rowTitle: rowModel?.rowTitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: Dimensions.medium) {
                    if let assets = rowModel?.items {
                        ForEach(assets) { asset in
                            AssetCardView(asset: asset)
                        }
                    } else {
                        ForEach(0..<5) { _ in
                            AssetCardView<Model>()
                        }
                    }
                }
                .fixedSize()
                .padding([.leading, .trailing])
            }
        }.shimmer(isDataLoading: isLoading)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView<MovieModel>()
    }
}
