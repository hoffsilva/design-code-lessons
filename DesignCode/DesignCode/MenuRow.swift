//
//  MenuRow.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-28.
//

import SwiftUI

struct MenuRow: View {
    
    var icon: String
    var title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light, design: .default))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(icon: "gear", title: "Account")
    }
}
