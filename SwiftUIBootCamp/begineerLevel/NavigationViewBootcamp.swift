//
//  NavigationViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                ForEach(0..<20){ index in
                    Spacer(minLength: 15)
                    NavigationLink(destination: SecondScreenNavigation(), label: {
                        Text("Second Navigation View \(index)")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(20)
                            .background(Color.white.cornerRadius(15))
                            .shadow(radius: 15)
                    })
                    
                    Spacer(minLength: 15)
                }
            }
            .navigationTitle("One Navigation Title")
        }
    }
}

struct SecondScreenNavigation: View {
    var body: some View{
        NavigationStack{
            ScrollView(showsIndicators: false){
                ForEach(0..<20){ index in
                    Text("Second Navigation View \(index)")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(20)
                        .background(Color.gray.cornerRadius(15))
                        .shadow(radius: 15)
                }
            }
            .navigationTitle("Second Navigation")
            
            
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
