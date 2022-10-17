//
//  ScrollViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView{
            //VStack
            LazyVStack{
                ForEach(0..<10){index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                       //HStack
                        LazyHStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 300, height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                   
                }
            }
            
        }
        
        
        
        
        
        
        
        
        
        /* ScrollView(.vertical, showsIndicators: true ,content: {
            VStack{
                ForEach(0..<30){index in
                    Rectangle()
                        .fill(Color.orange)
                        .frame(height: 250)
                        .cornerRadius(20)
                        .padding(.all, 10)
                }
            }
        })*/
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
