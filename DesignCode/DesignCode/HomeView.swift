//
//  HomeView.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-29.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var showProfile: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28 , weight: .bold))
                Spacer()
                AvatarView(showProfile: self.$showProfile)
                
            }
            .padding(.horizontal)
            .padding(.top, 30)
            Spacer()
        }
    }
}
