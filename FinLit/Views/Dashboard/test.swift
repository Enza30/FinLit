//
//  test.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 17/11/21.
//

import SwiftUI

struct test: View {
    var body: some View {
        NavigationView{
            ScrollView{
        
                ZStack{
//            LinearGradient(colors: [Color("MainColor"), Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            Color.white
                .edgesIgnoringSafeArea(.all
                )
            
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                VStack{
               
                  
                    Text("August 2022").font(.system(size: 14)).bold()
                        .foregroundColor(Color.secondary)


                    Text("Rp. 1.000.000").font(.largeTitle).bold()
                        .foregroundColor(Color("ColorSecond"))
                    
            
                
                }.padding(.all, 5)
                    Spacer()
                }
                    
                Spacer(minLength: 15)
                HStack{
                    Spacer()
                    ZStack{
                        VStack(spacing: 0) {
                            HStack {
                                Text("You young dumb and broke")
                                    .foregroundColor(.white)
                            }
                            .frame(height: 52)
                            
                            HStack{
                                VStack(spacing:0) {
                                    HStack {
                                        Spacer()
                                        Text("Expense Rate")
                                            .font(.system(size: 14)).bold()
                                            
                                        Spacer(minLength: 110)
                                        Text("Inc.v.Exp|Date")
                                            .font(.system(size: 14))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    VStack(spacing:0) {
                                        ZStack {
                                            barLine()
                                            VStack {
                                                HStack(spacing: 2) {
                                                        Rectangle()
                                                            .frame(width: 7, height: 26)
                                                            .foregroundColor(Color("ColorSecond"))
                                                }
                                            }
                                                
                                            
                                        }
                                        Text("14 Aug")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("ColorSecond"))
                                    }
                                    
                                }
                            }
                            .frame(width: 347, height: 77)
                            .background(.white)
                            
                            HStack(spacing: 0) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    .border(Color("garis"), width: 1)
                                    
                                    HStack {
                                        Spacer()
                                        VStack{
                                            Text("Total Income")
                                                .font(.system(size: 12))
                                                .frame(width:100, alignment: .topLeading)
                                                .foregroundColor(.secondary)
                                            Text("Rp.2.000.000")
                                                .font(.system(size: 14)).bold()
                                                .frame(width:100, alignment: .topLeading)
                                        }
                                        Spacer()
                                        Button(action:{}, label:{
                                            Image(systemName: "plus.circle.fill")
                                                .resizable()
                                                .foregroundColor(Color("MainColor"))
                                                .frame(width: 24, height: 24)
                                                
                                        })
                                        Spacer()
                                    }
                                    
                                }
                                
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    .border(Color("garis"), width: 1)
                                    
                                    VStack{
                                        Text("Total Expenses")
                                            .font(.system(size: 12))
                                            .frame(width:130, alignment: .topTrailing)
                                            .foregroundColor(.secondary)
                                        Text("Rp.1.110.000")
                                            .font(.system(size: 14)).bold()
                                            .frame(width:130, alignment: .topTrailing)
                                    }
                                }
                                    
                            }
                        }
                        .border(Color("garis"), width: 1)
                        
                    }
                    .frame(width: 347, height: 185)
                    .background(Color("MainColor"))
                    .cornerRadius(10)
                    .shadow(radius: 5, x: 2, y: 3)
                    .shadow(color: Color.white, radius: 5, x: -2, y: -3)
                    
    
                    Spacer()
                }

//                    .background(Color("MainColor"))
//                    .cornerRadius(15)
//                    .shadow( radius: 10, x: 6, y: 7)
                Spacer(minLength: 30)
                HStack{
                Text("Today's Expense").font(.headline)
                    Spacer(minLength: 110)
                    
                 Text("Rp.1.000.000")
                    Spacer(minLength: 10)
                }
            
                Spacer(minLength: 20)
                HStack{
                Text("Categories").font(.headline)
                
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color("MainColor"))
                        .padding(.horizontal)
                    
                }
//
                    kategori_baru()
//
    
        
           
           
            }.padding()
//        }.background(Color("BgColor"))
//            .edgesIgnoringSafeArea(.all)
//            .navigationViewStyle(StackNavigationViewStyle())
//            .frame(alignment: .topTrailing)
            
        }
            }.navigationTitle("Your Money")
    }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}


//struct RoundedCorners: Shape {
//    var tl: CGFloat = 0.0
//    var tr: CGFloat = 0.0
//    var bl: CGFloat = 0.0
//    var br: CGFloat = 0.0
//
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        let w = rect.size.width
//        let h = rect.size.height
//
//        // Make sure we do not exceed the size of the rectangle
//        let tr = min(min(self.tr, h/2), w/2)
//        let tl = min(min(self.tl, h/2), w/2)
//        let bl = min(min(self.bl, h/2), w/2)
//        let br = min(min(self.br, h/2), w/2)
//
//        path.move(to: CGPoint(x: w / 2.0, y: 0))
//        path.addLine(to: CGPoint(x: w - tr, y: 0))
//        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
//                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
//
//        path.addLine(to: CGPoint(x: w, y: h - br))
//        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
//                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
//
//        path.addLine(to: CGPoint(x: bl, y: h))
//        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
//                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
//
//        path.addLine(to: CGPoint(x: 0, y: tl))
//        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
//                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
//        path.closeSubpath()
//
//        return path
//    }
//}
