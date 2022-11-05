//
//  StateBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 20.10.2022.
//

import SwiftUI

struct StateBootcamp: View {
    @State var title: String = "My init Title"
    @State var background : Color = Color.blue
    @State var count : Int = 0
    var body: some View {
        ZStack {
            // background
            background.ignoresSafeArea(.all)
            
            // content
            VStack(spacing:20){
                
                
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.title2)
                HStack(spacing:30){
                    Button(action: {
                        background = Color.green
                        title = "Count inc"
                        count += 1
                    }, label: {
                        Text("Button +")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            
                    })
                    Button(action: {
                        title = "Count dec"
                        background = Color.red
                        count -= 1
                    }, label: {
                        Text("Button -")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            
                    })
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
