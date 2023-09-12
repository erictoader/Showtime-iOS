//
//  RowTitleView.swift
//  Showtime
//
//  Created by Eric Toader on 12.09.2023.
//

import SwiftUI

struct RowTitleView: View {
    
    @State var rowTitle: String?
    
    var body: some View {
        if let title = rowTitle {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading)
        } else {
            Color.black
                .frame(width: 120, height: 20)
                .cornerRadius(5)
                .opacity(0.3)
                .padding(.leading)
        }
    }
}

struct RowTitleView_Previews: PreviewProvider {
    static var previews: some View {
        RowTitleView()
    }
}
