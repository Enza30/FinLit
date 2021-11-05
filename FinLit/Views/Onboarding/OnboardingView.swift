//
//  OnboardingView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import SwiftUI

struct OnboardingView: View {
    @State private var selection = 0
    
    
    var body: some View {
        ZStack {
            Color("dasar")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                //Skip
                //Page
                //Button
                
                
            }
        }
        .transition(.move(edge: .bottom))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
