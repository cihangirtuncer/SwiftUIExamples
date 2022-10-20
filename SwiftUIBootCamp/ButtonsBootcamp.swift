//
//  ButtonsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 20.10.2022.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title : String = "this is my title"
    var body: some View {
        VStack(spacing:20){
            Text(title)
            Button("Press me!"){
                self.title = "BUTTON WAS PRESSED"
            }
            Button(action:{
                self.title = "Button 2 was pressed"
            } , label: {
                Text("Button 2")
            })
            
            Button(action: {
                self.title = "Button was pressed save"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            
            
            Button(action: {
                self.title = "Icon button was pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
                
            })
            
            Button(action: {
                self.title = "Finish button was pressed"
            }, label: {
                
                Text("Finish" .uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
            
        }
    }
    
    struct ButtonsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            ButtonsBootcamp()
        }
    }
}
