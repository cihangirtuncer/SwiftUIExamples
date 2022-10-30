//
//  ListSwipeActionsButtonBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 31.10.2022.
//

import SwiftUI

struct ListSwipeActionsButtonBootcamp: View {
    @State var fruits: [String] = [
    "apple", "orange", "melon" , "banana"
    ]
    var body: some View {
        List{
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                        Button {
                        
                    } label: {
                        Text("Arcihve")
                    }
                    .tint(.gray)
                        Button {
                            
                        } label: {
                            Text("Save")
                        }
                        .tint(.green)
                        Button {
                            
                        } label: {
                            Text("Delete")
                        }
                        .tint(.red)
                        
                    }
                    )
                    .swipeActions(edge: .leading, allowsFullSwipe: false, content: {
                        Button {
                        
                    } label: {
                        Text("Share")
                    }
                    .tint(.yellow)
                       
                        
                    }
                    )
                    
            }
        }
    }
}

struct ListSwipeActionsButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsButtonBootcamp()
    }
}
