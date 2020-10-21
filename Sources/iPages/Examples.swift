//
//  Examples.swift
//  
//
//  Created by Kalil Fine on 10/9/20.
//
import SwiftUI
import iGraphics
import iColor

@available(iOS 14, *)
struct CustomDotsExample: View {
    @State var currentPage: Int = 0
    var body: some View {
        iPages(currentPage: $currentPage) {
            iGraphicsView(.first)
            iGraphicsView(.second)
            iGraphicsView(.third)
        }
        .dotsBackgroundStyle(.prominent)
        .dotsTintColors(currentPage: Color.neonPurple, otherPages: Color.neonRed)
    }
}

struct ShoppingSwipeViewExample: View {
    @State var currentPage: Int = 0
    var body: some View {
        iPages(currentPage: $currentPage) {
            iGraphicsBox(.photo)
                .stack(3)
            iGraphicsBox(.card)
                .stack(2)
        }
        .hideDots(true)
        .wrapsInfinitely(true)
    }
}

struct MarketingSwipeViewExample: View {
    @State var currentPage: Int = 0
    var body: some View {
        iPages(currentPage: $currentPage) {
            iGraphicsView(.first)
            iGraphicsView(.second)
            iGraphicsView(.third)
        }
    }
}
