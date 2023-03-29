//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-29.
//

import SwiftUI

struct UpdateDetail: View {
    
    var update: Update
    
    var body: some View {
        List {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationTitle(update.title)
        }
        .listStyle(.plain)
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail(update: Update(image: "", title: "", text: "", date: ""))
    }
}
