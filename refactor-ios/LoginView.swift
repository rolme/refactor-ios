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
        .disableAutocorrection(true)
        .autocapitalization(UITextAutocapitalizationType.none)

      TextField("Password", text: $password)
        .padding(.leading)
        .padding(.trailing)
        .frame(height: 50)
        .disableAutocorrection(true)
        .autocapitalization(UITextAutocapitalizationType.none)
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

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}

func authenticate(username: String, password: String) {
  // Use AWSMobileClient to log in.
    print("in authenticate")
    AWSMobileClient.default().signIn(username: username.lowercased(), password: password) { (signInResult, error) in
        if let error = error  {
            print("Got an error")
            print("\(error.localizedDescription)")
        } else if let signInResult = signInResult {
            print("Got a signInResult")
            switch (signInResult.signInState) {
            case .signedIn:
                print("User is signed in.")
            case .smsMFA:
                print("SMS message sent to \(signInResult.codeDetails!.destination!)")
            default:
                print("Sign In needs info which is not yet supported.")
            }
        }
    }
    print("conmpleted sign in")
//    TODO: load the content view
}
