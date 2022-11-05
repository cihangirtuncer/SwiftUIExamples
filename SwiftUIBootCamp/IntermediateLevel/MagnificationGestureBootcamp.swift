//
//  MagnificationGestureBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 5.11.2022.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    @State var currentAmount : CGFloat = 0
    @State var lastAmount : CGFloat = 0

    var body: some View {
        VStack(spacing: 10){
            HStack{
                Circle().frame(width: 35, height: 35)
                Text("Cihangir Tuncer")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Image("image")
                .resizable()
                .frame(height: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(MagnificationGesture()
                    .onChanged{value in
                        currentAmount = value - 1
                    }
                    .onEnded{ value in
                        withAnimation(.spring()){
                            currentAmount = 0
                        }
                    }
                )
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
    }
}

struct MagnificationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBootcamp()
    }
}
