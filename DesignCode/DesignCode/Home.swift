//
//  Home.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-28.
//

import SwiftUI

struct Home: View {
    
    @State var showProfile = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            HomeView(showProfile: self.$showProfile)
                .padding(.top, 44)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                .offset(y: showProfile ? -450 : 0)
                .rotation3DEffect(.degrees(showProfile ? (viewState.height / 10) : 0), axis: (x: 10, y: 0, z: 0))
                .scaleEffect(showProfile ? 0.9 : 1)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .edgesIgnoringSafeArea(.all)
            
            
            MenuView()
                .background(.black.opacity(0.001))
                .offset(y: showProfile ? 0 : screen.height)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { vaulue in
                            self.viewState = vaulue.translation
                        }
                        .onEnded { value in
                            if self.viewState.height > 50 {
                                self.showProfile = false
                            }
                            self.viewState = .zero
                        }
                )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct AvatarView: View {
    
    @Binding var showProfile: Bool
    
    var body: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image("Avatar")
                .renderingMode(.original)
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        }
    }
}

let screen = UIScreen.main.bounds
