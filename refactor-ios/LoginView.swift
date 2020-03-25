//
//  LoginView.swift
//  refactor-ios
//
//  Created by Sammy Franusic on 3/20/20.
//  Copyright © 2020 Ron Parnaso. All rights reserved.
//

import SwiftUI
import AWSMobileClient

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .textContentType(.emailAddress)
                .padding(.leading)
                .padding(.trailing)
                .frame(height: 50)
                .background(Color.white)
            TextField("Password", text: $password)
                .padding(.leading)
                .padding(.trailing)
                .frame(height: 50)
                .disableAutocorrection(true)
                .textContentType(.newPassword)
            Button(action: {
                authenticate(username: self.email, password: self.password)
            }) {
                Text("Log In")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: 300,
                           alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(CGFloat(5))
            }

            
            
        }
    }
}

func authenticate(username: String, password: String) {
    // Use AWSMobileClient to log in.
    AWSMobileClient.default().signIn(username: username, password: password) { success, error in
        if success != nil {
            // Move to main view
        }

        if let error = error {
            if let awsError = error as? AWSMobileClientError {
                print("Error: \(awsError.localizedDescription)")
            }
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
