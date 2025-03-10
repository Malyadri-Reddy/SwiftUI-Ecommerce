//
//  ProductsView.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 07/03/25.
//

import SwiftUI

struct ProductsView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
        NavigationView{
            ScrollView(){
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id){product in
                        ProductCartview(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("All furnitures"))
        }
    }
}

#Preview {
    ProductsView().environmentObject(CartManager())
}
