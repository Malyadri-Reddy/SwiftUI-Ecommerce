//
//  PaymentButton.swift
//  SwiftUI-Ecommerce
//
//  Created by Malyadri Reddy on 06/03/25.
//

import SwiftUI
import PassKit

struct PaymentButton: View {
    
    var action: () -> Void
    var body: some View {
        Representable(acttion: action)
    }
}

#Preview {
    PaymentButton( action: {})
        .frame(minWidth: 100, maxHeight: 400)
        .frame(height: 45)
        .frame(maxWidth: .infinity)
}

extension PaymentButton {
    
    struct Representable: UIViewRepresentable {
        var acttion:() -> Void
        
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: acttion)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = acttion
        }
    }
    
    class Coordinator: NSObject {
        
        var action: () -> Void
        
        var button = PKPaymentButton(paymentButtonType: .continue, paymentButtonStyle: .automatic)
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any) {
            action()
        }
    }
}
