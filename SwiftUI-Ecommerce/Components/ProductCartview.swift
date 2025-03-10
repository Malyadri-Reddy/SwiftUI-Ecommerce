//
//  ProductCartview.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import SwiftUI

struct ProductCartview: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack{
            Color("kSecondary")
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    Text("$ \(product.price)")
                        .bold()
                        .foregroundColor(.black)
                }
                Button{
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
    }
}

#Preview {
    ProductCartview(product: productList[0]).environmentObject(CartManager())
}
