//
//  UiUtils.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import Foundation
import SwiftUI
import SwiftUI_Shimmer

struct Dimensions {
    static let tiny: CGFloat = 4
    static let small: CGFloat = 8
    static let medium: CGFloat = 16
    static let large: CGFloat = 32
    static let extraLarge: CGFloat = 64
    static let extraExtraLarge: CGFloat = 128
}

extension View {
    
    func roundedCorners() -> some View {
        return cornerRadius(10)
    }
    
    func shimmer(isDataLoading: Bool) -> some View {
        return shimmering(
            active: isDataLoading,
            animation: Animation
                .linear(duration: 1.0)
                .delay(0.25)
                .repeatForever(autoreverses: false)
        )
    }
}
