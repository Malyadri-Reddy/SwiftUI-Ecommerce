//
//  CartPage.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import SwiftUI

struct CartPage: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView(){
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){product in
                    CartProductView(product: product)
                }
                HStack {
                    Text("Your Total is ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }
            else {
                Text("Your cart is empty")
                    .padding()
                
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CartPage().environmentObject(CartManager())
}
