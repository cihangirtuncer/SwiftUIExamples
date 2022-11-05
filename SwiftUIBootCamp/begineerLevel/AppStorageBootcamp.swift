//
//  AppStorageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 26.10.2022.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @State var textFieldState : String = ""
    var body: some View {
        VStack(spacing: 20){
            Text(textFieldState)
            TextField("TextField", text: $textFieldState)
                .frame(width: 310)
                .padding(15)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            Button {
                UserDefaults.standard.set(textFieldState, forKey: "textFieldValue")
            } label: {
                Text("Save")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 10)
            }

        }
        .onAppear{
            textFieldState = UserDefaults.standard.string(forKey: "textFieldValue") ?? ""
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
