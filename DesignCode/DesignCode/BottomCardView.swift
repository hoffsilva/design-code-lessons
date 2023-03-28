//
//  BottomCardView.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-27.
//

import SwiftUI

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            Text("This certificate is proof that Meng To has achieved the UI Design course with approval from Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: 20)
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
