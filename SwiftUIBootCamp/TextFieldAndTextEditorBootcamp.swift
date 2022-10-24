//
//  TextFieldAndTextEditorBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 24.10.2022.
//

import SwiftUI

struct TextFieldAndTextEditorBootcamp: View {
    @State var textFieldState : String = ""
    @State var textEditorState : String = ""
    var body: some View {
        NavigationStack {
            VStack{
                Text(textFieldState)
                TextField("TextField", text: $textFieldState)
                    .frame(width: 310)
                    .padding(15)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                Text(textEditorState)
                
                TextEditor(text: $textEditorState)
                    .frame(height: 300)
                    .colorMultiply(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            }
            .padding()
            .background(Color.white)
        }
    }
}

struct TextFieldAndTextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldAndTextEditorBootcamp()
    }
}
