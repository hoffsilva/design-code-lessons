//
//  ContentView.swift
//  DesignCode
//
//  Created by Hoff Silva on 2023-03-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("UI Design")
                .font(.title)
                .fontWeight(.semibold)
            Text("certificate")
                .foregroundColor(Color("accent"))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
