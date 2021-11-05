//
//  TabDetailView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import SwiftUI

struct TabDetailView: View {
    let index: Int
    
    var body: some View {
        VStack {
            Text(tabs[index].title)
                .font(.title)
                .bold()
            
            Image(tabs[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 320)
            
            Text(tabs[index].text)
                .padding()
            Spacer()
        }
        .foregroundColor(.black)
    }
}

struct TabDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("dasar")
                .ignoresSafeArea()
            TabDetailView(index: 0)
        }
    }
}
