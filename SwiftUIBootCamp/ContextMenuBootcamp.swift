//
//  ContextMenuBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 24.10.2022.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift is awesome")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding(30)
        .background(Color.blue.cornerRadius(20))
        .contextMenu(menuItems: {
            Button {
                
            } label: {
                Text("Share")
            }
            Button {
                
            } label: {
                Text("Edit")
            }

            Button {
                
            } label: {
                Text("Report")
            }


        })
        
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
