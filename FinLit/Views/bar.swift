//
//  bar.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 05/11/21.
//

import SwiftUI

struct bar: View {
    @State var lingkaranProgres: CGFloat = 0.0
    var body: some View {
        VStack{
        ZStack{
            Circle()
                .trim(from: 0.0, to: lingkaranProgres)
                .stroke(Color.gray, lineWidth: 15)
                .frame(width: 200, height: 200)
                
            Circle()
                .trim(from: 0.0, to: lingkaranProgres)
                .stroke(Color("warna5"), lineWidth: 15)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: -90))
            Text("\(Int(self.lingkaranProgres*100))%")
                .font(.custom("SF Pro", size: 20.0))
        }
        Button(action: {self.startLoading()}){
            Text("Start!")
        }
        }
    }

func startLoading() {
    _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
        timer in
        withAnimation(){
            self.lingkaranProgres += 0.01
            if self.lingkaranProgres >= 1.0 {
                timer.invalidate()
            }
        }
    }
}
}

struct bar_Previews: PreviewProvider {
    static var previews: some View {
        bar()
    }
}
