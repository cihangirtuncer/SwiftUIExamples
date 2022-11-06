//
//  HashableBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI

struct MyCustomModel : Hashable {
    let title : String
    
    func hash(into hasher: inout Hasher){
        hasher.combine(title)
    }
}


struct HashableBootcamp: View {
    
    let data : [MyCustomModel] = [
    MyCustomModel(title: "ONE"),
    MyCustomModel(title: "TWO"),
    MyCustomModel(title: "THREE"),
    MyCustomModel(title: "FOUR"),
    MyCustomModel(title: "FİVE")
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(data, id: \.self) { item in
                    Text(item.hashValue.description)
                        .font(.headline)
                }
            }
        }
    }
}

struct HashableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HashableBootcamp()
    }
}
