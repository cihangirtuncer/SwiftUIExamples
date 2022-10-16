//
//  BacgroundAndOverlayBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct BacgroundAndOverlayBootcamp: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple.opacity(0.5),radius: 10, x: 0, y: 10)
                    .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        )
                    , alignment: .bottomTrailing

                    )
            )
        
        
        
        
        /* Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                ,alignment: .topLeading
                
            )
            .background(
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150),
            alignment: .bottomTrailing
            )
        */
        
        
        
        /* Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .overlay(
            Text("1")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            )
            .background(
            Circle()
                .fill(Color.blue)
                .frame(width: 150, height: 150)
            )
            */
        
            //.background(
                //Color.red
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                //Circle().fill(Color.blue)
                 //   .frame(width: 100, height: 100, alignment: .center)
            //)
            
            //.background(
              //  Circle().fill(Color.red)
                //    .frame(width: 120, height: 120, alignment: .center)
           // )
    }
}

struct BacgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundAndOverlayBootcamp()
    }
}
