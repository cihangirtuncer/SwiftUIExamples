//
//  TernaryBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 22.10.2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState : Bool = false
    var body: some View {
        ZStack{
            Button(action: {
                isStartingState.toggle()
            }, label: {
                Circle()
                    .fill(isStartingState ? .white : .black)
                    .frame(width: isStartingState ?  75 : 90)
                    .shadow(radius:isStartingState ? 10 : 20)
                    .overlay(
                        Image(systemName: isStartingState ? "heart.fill" : "car")
                        .font(.largeTitle)
                        .foregroundColor(isStartingState ? Color.red : Color.white)
                    )
                
            })
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
