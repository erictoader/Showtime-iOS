//
//  ContentView.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: Dimensions.large) {
                    CarouselView()
                    RowView<MovieModel>()
                    RowView<MovieModel>()
                    RowView<MovieModel>()
                    RowView<MovieModel>()
                }
            }
            .navigationTitle("Home Page")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
