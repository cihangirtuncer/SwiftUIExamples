//
//  GridBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct GridBootcamp: View {
    let columns : [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(columns: columns,alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders] ,content: {
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

                
                
            })
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
