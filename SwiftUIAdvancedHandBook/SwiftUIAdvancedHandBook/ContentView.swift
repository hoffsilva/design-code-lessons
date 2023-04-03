//
//  ContentView.swift
//  SwiftUIAdvancedHandBook
//
//  Created by Hoff Silva on 2023-04-03.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button(action: { login() }) {
                Text("Sign In")
            }
        }
        .padding()
    }
    
    func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { authDataResult, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Success")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
