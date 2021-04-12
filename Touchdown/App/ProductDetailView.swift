//
//  PreviewDetailView.swift
//  Touchdown
//
//  Created by Mabast on 4/6/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shpp: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // Nav Bar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)

            // Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            // Detail buttom part
            VStack(alignment: .center, spacing: 0, content: {
                // Rating + Sizes
                RatingsAndSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shpp.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                // Quantity + Favorate
                QuantityAndFavorateDetailView()
                    .padding(.vertical, 10)
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })
        .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shpp.selectedProduct?.red ?? sampleProduct.red,
                    green: shpp.selectedProduct?.green ?? sampleProduct.green,
                    blue: shpp.selectedProduct?.blue ?? sampleProduct.blue
            )
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct PreviewDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
