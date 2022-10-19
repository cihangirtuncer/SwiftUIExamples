//
//  SafeAreaBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 20.10.2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
     
        ScrollView{
            VStack{
                Text("I m coder")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity , alignment: .leading)
                
                ForEach(0..<10 ){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }.background(Color.red
            .ignoresSafeArea(.all)
        )
            
        
        
        
        /*   ZStack{
            
            //background
            Color.blue
                .ignoresSafeArea(edges: .all)
            
            
            //foreground
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            
            
        } */
        
        
        
        
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
