//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 1.11.2022.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State var username : String = ""
    var body: some View {
        TextField(text: $username) {
            Text("Hwllo where are you from")
                
        }
        .frame(width: 300,height: 55)
        .padding(.leading)
        .background(Color.gray.brightness(0.3))
        .cornerRadius(10)
        .submitLabel(.return)
        .onSubmit {
            print("Succes")
        }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
