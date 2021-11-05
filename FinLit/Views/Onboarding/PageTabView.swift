//
//  PageTabView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import SwiftUI

struct PageTabView: View {
    @Binding var selection: Int
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabView(selection: Binding.constant(0))
    }
}
