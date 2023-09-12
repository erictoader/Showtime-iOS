//
//  RowModel.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

struct RowModel<Data: AssetModel> {
    let rowTitle: String
    let items: [Data]
}
