//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 20.10.2022.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    let columns : [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.teal)
                .frame(width: 200, height: 200)
                
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders] ,content: {
                
                selection1
                selection2
                
            })
        }
    }
}

var selection1 : some View{
    Section(header: Text("Section 1")
        .font(.title)
        .foregroundColor(Color.white)
        .background(Color.red)
        .padding()
    
    )
    {
        ForEach(0..<20){ index in
            Rectangle()
                .frame(height: 150)
            
        }
        
                   }
}


var selection2: some View {
    Section(header: Text("Section 2")
        .font(.title)
        .foregroundColor(Color.white)
        .background(Color.blue)
        .padding()
    
    ) {
        ForEach(0..<20){ index in
            
            Rectangle()
                .frame(height: 150)
            
            
        }
                   }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
