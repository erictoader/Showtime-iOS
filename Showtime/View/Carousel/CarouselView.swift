//
//  CarouselRow.swift
//  Showtime
//
//  Created by Eric Toader on 12.09.2023.
//

import SwiftUI

struct CarouselView: View {
    
    @State var model: CarouselModel? {
        didSet { isLoading = false }
    }
    @State private var isLoading = true
    @State private var index = 0
    
    private var numberOfPages: Int { model?.items.count ?? 0 }
    private let timer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $index) {
            if let assets = model?.items {
                ForEach(assets, id: \.id) { asset in
                    CarouselCardView(asset: asset)
                }
            } else {
                CarouselCardView()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 300)
        .shimmer(isDataLoading: isLoading)
        .overlay(alignment: .bottomTrailing) {
            HStack(spacing: Dimensions.small) {
                ForEach((0..<numberOfPages), id: \.self) { index in
                    Circle()
                        .fill(index == self.index ? Color.white : Color.gray.opacity(0.3))
                        .shadow(radius: 2)
                        .frame(height: index == self.index ? 15 : 10)
                    
                }
            }
            .padding()
            .padding(.trailing, Dimensions.medium)
        }
        .onReceive(timer) { _ in
            withAnimation {
                if numberOfPages != 0 {
                    index = (index + 1) % numberOfPages
                }
            }
        }
        .onDisappear {
            timer.upstream.connect().cancel()
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
