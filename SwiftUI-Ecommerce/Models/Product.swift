//
//  Product.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Leather couch", image: "img1", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Nice couch", image: "img2", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "walmart", price: 450, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Gray couch", image: "img3", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "Honda", price: 550, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Beautiful couch", image: "img4", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "Home depo", price: 650, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: ")ut door couch", image: "img5", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "LG", price: 650, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Green couch", image: "img6", description: "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS", supplier: "Nokia", price: 750, width: "200 cm", height: "135 cm", diameter: "105 cm")
]
