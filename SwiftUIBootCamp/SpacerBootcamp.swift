//
//  SpacerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(){
                Spacer(minLength: 1)
                Rectangle()
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                Spacer()
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                Spacer()
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                Spacer()
                
            }
            .background(Color.red)
            Spacer()
                .frame(width: 10)
                .background(.orange)
        }
       // .padding(.horizontal, 60)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
