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
                .stroke(Color("ActionColor"), lineWidth: 15)
                .opacity(0.5)
                .frame(width: 136, height: 136)
                
            Circle()
                .trim(from: 0.0, to: lingkaranProgres)
                .stroke(Color("ActionColor"), lineWidth: 15)
                .frame(width: 136, height: 136)
                .rotationEffect(Angle(degrees: -90))
            VStack {
                Text("\(Int(self.lingkaranProgres*100))%")
                    .font(.custom("SF Pro", size: 24.0)).bold()
                Button(action: {self.startLoading()}){
                    Text("Start!")
                }
            }
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
struct barLine: View{
    @State var currentProgress: CGFloat = 155.0
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.secondary)
                .frame(width: 314, height: 20)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("ActionColor"))
                .frame(width: currentProgress, height: 20)
        }
    }
}

