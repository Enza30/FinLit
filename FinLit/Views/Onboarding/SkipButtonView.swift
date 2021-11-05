//
//  SkipButtonView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import SwiftUI

struct SkipButtonView: View {
    @Binding var isOnboardingShowing: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {dismiss()}, label: {
                Text("Skip")
                    .foregroundColor(Color("warna3"))
                    .padding()
                
            })
        }
    }
    
    func dismiss() {
        withAnimation{
            isOnboardingShowing.toggle()
        }
    }
}

struct SkipButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SkipButtonView(isOnboardingShowing: Binding.constant(true))
    }
}
