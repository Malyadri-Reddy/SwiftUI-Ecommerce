//
//  HomePage.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    Appbar()
                    SearchView()
                    ImageSliderView()
                    HStack{
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        NavigationLink(destination: ProductsView(), label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("kPrimary"))
                        })
                        
                        
                    }
                    .padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            
                            ForEach(productList, id: \.id){product in
                                
                                NavigationLink{
                                    ProductDetailsView(product: product)
                                } label: {
                                    ProductCartview(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                    }
                }
            }
        }
    }
}


#Preview {
    HomePage().environmentObject(CartManager())
}

struct Appbar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack(){
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    Text("Vinjamuru, Ap")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink(destination: CartPage().environmentObject(cartManager)
                    ){ CartButton(numberOfproducts: cartManager.products.count)}
                }
                Text("Find The Most \nLuxuries")
                    .font(.largeTitle .bold())
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
