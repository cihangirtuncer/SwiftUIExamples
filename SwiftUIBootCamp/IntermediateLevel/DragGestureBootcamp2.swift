//
//  DrageGestureBootcamp2.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 5.11.2022.
//

import SwiftUI

struct DragGestureBootcamp2: View {

    @State var startingOffsetY : CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY : CGFloat = 0
    @State var endingOffsetY : CGFloat = 0
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            MySignUpView()
                .offset(y:startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        })
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < 150 {
                                    endingOffsetY = -startingOffsetY
                                }else if (endingOffsetY != 0 && currentDragOffsetY > 150){
                                    endingOffsetY = 0
                                }
                                currentDragOffsetY = 0

                            }
                        })
                )

        }
        .ignoresSafeArea(edges:.bottom)
    }
}

struct DrageGestureBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp2()
    }
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing:30){
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign up")
                .font(.headline)
                .fontWeight(.semibold)
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 100 , height: 100)
            
            Text("This is the description for our app. This is my favorite SwiftUI")
                .multilineTextAlignment(.center)
            Text("CREATE AN ACCOUNT")
                .foregroundColor(Color.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: 8000)
        .background(Color.white)
        .cornerRadius(30)
    }
}
