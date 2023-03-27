//
//  ContentView.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-23.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            BackCardView()
                .background(show ? Color("card3") : Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x:0, y: show ? -400 : -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(show ? 0 : 10))
                .rotation3DEffect(.degrees(10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeOut(duration: 0.5))
            
            BackCardView()
                .background(show ? Color("card4") : Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x:0, y: show ? -200 : -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(show ? 0 : 5))
                .rotation3DEffect(.degrees(5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeOut(duration: 0.3))
            
            CardView()
                .blendMode(.hardLight)
                .onTapGesture {
                    show.toggle()
                }
            
            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
