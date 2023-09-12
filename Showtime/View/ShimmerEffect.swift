//
//  ShimmerEffect.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import SwiftUI

extension View {
    
    func shimmer(enabled: Bool, duration: Double = 1.0) -> some View {
        let baseAnimation = Animation.easeInOut(duration: duration)
        let repeated = baseAnimation.repeatForever(autoreverses: true)
        return withAnimation(repeated) {
            opacity(1.0)
        }
    }
}
