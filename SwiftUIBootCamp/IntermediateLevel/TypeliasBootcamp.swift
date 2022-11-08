//
//  TypeliasBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 8.11.2022.
//

import SwiftUI

struct MovieModel {
    let title : String
    let direction : String
    let count : Int
}

typealias TvModel = MovieModel

struct TypeliasBootcamp: View {
  //  @State var item : MovieModel = MovieModel(title: "Title", direction: "Joe", count: 5)
    @State var item : TvModel = TvModel(title: "Title", direction: "Philps", count: 9)
    var body: some View {
        VStack(spacing: 20) {
            Text(item.title)
            Text(item.direction)
            Text("\(item.count)")
        }
    }
}

struct TypeliasBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TypeliasBootcamp()
    }
}
