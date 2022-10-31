//
//  FocusStateBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 1.11.2022.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField : Hashable {
        case username
        case password
    }
    
    @State private var username : String = ""
    @State private var password : String = ""
    @FocusState private var fieldInFocus : OnboardingField?
    
    var body: some View {
        VStack(spacing: 30){
            
            TextField(text: $username) {
                Text("Please add your name")
            }
            .focused($fieldInFocus, equals: .username)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: 300)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
            
            SecureField(text: $password) {
                Text("Please add your password")
            }
            .focused($fieldInFocus, equals: .password)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: 300)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
            
            Button {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if(usernameIsValid && passwordIsValid){
                    print("Sign up")
                }else if (usernameIsValid){
                    fieldInFocus = .password
                }else{
                    fieldInFocus = .username
                }
                
            } label: {
                Text("SIGN UP")
            }

            
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
