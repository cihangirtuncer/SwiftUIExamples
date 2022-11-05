//
//  StacksBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.teal)
                    .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color.green)
                    .frame(width: 30, height: 30)
                }
                .background(Color.white)
                
            }
            .background(Color.black)
            
            
            
        }
        
        
        
        
        /*
         ZStack(alignment: .trailing ,content: {
             Rectangle()
                 .fill(Color.orange)
                 .frame(width: 200, height: 200)
             Rectangle()
                 .fill(Color.red)
                 .frame(width: 150, height: 150)
             Rectangle()
                 .fill(Color.blue)
                 .frame(width: 100, height: 100)
             
         })
         */
        
        
        /*
         HStack(alignment: .top, spacing: nil ,content: {
             Rectangle()
                 .fill(Color.orange)
                 .frame(width: 200, height: 200)
             Rectangle()
                 .fill(Color.red)
                 .frame(width: 150, height: 150)
             Rectangle()
                 .fill(Color.blue)
                 .frame(width: 100, height: 100)
             
         })
         */
        
        /*VStack(alignment: .leading, spacing: 0,content: {
            Rectangle()
                .fill(Color.orange)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
        })*/
        
       
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
