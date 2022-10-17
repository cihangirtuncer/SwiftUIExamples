//
//  ForEachBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data : [String] = ["Hi","Hello","What!"]
    let myString: String = "My String"
    
    var body: some View {
     
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
            
            
            
        }
        
        
        
        
        
        
        /*  VStack{
        ForEach(0..<10){  index in
                HStack{
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("index is: \(index)")
                }
                
            }
            
        }*/

    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
