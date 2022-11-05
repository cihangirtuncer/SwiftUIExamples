//
//  BindingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 21.10.2022.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor : Color = Color.white
    @State var titleString : String = "Default title"
    @State var titleColor : Color = Color.black
    var body: some View {
        
        
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .bold()
                    .foregroundColor(titleColor)
                ButtonView(bacgroundColorBindingBootcampView: $backgroundColor, titleColorBindingBootcampView: $titleColor)
                
            }
        }
    }
}

struct ButtonView: View {
    @Binding var bacgroundColorBindingBootcampView: Color
    @Binding var titleColorBindingBootcampView: Color
    @State var buttonBackgorundColor : Color = Color.white
    @State var buttonTextColor : Color = Color.black
    var body: some View{
        Button(action: {
            bacgroundColorBindingBootcampView = Color.blue.opacity(0.8)
            titleColorBindingBootcampView = Color.white
            buttonBackgorundColor = Color.black
            buttonTextColor = Color.white
        }, label: {
            Text("Button")
                .foregroundColor(buttonTextColor)
                .font(.caption)
                .padding()
                .padding(.horizontal, 10)
                .background(buttonBackgorundColor)
                .cornerRadius(15)
                .shadow(radius: 15)
            
        })
    }
}


struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
