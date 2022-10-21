//
//  ConditionalBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 21.10.2022.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle : Bool = false
    @State var showRectangel : Bool = false
    @State var isLoading : Bool = false
    var body: some View {
        VStack{
            Text("show circle:  \(showCircle.description)")
            Text("show rectangle:  \(showRectangel.description)")
            Text("show is loading:  \(isLoading.description)")
            HStack(spacing:15){
                Button(action: {
                    showCircle.toggle()
                }, label: {
                    Text("Button Circle")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                })
                Button(action: {
                    showRectangel.toggle()
                }, label: {
                    Text("Button Rectangle")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                })
            }
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("Button is loading")
                    .font(.headline)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 10)
            })
                
            
            if(showCircle){
                Rectangle()
                    .frame(width: 100,height: 100)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            if showRectangel{
                Circle()
                    .fill(Color.orange)
                    .frame(width: 100)
            }
            
            if isLoading{
                ProgressView()
            }
            
        }
        
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
