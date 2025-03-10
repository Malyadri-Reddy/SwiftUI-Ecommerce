//
//  CartButton.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import SwiftUI

struct CartButton: View {
    var numberOfproducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            
            Image(systemName: "bag.fill")
                .padding(5)
            if numberOfproducts > 0 {
                Text("\(numberOfproducts)")
                    .font(.caption2)
                    .foregroundColor(.black)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(12)
            }
            
        }
    }
}

#Preview {
    CartButton(numberOfproducts: 1)
}
