//
//  BadgesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 31.10.2022.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
                TabView{
                    List{
                        Text("Hello")
                            .badge("New text")
                        Text("Hello")
                        Text("Hello")
                        Text("Hello")
                        Text("Hello")
                        Text("Hello")
                    }
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("New")
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            
        }
        
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
