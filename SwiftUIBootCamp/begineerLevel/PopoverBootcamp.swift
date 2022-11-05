//
//  PopoverBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen : Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Button("Button"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                .bold()
            .foregroundColor(Color.white)
                Spacer()
            }
            
            // Method 1 SHEET
            .sheet(isPresented: $showNewScreen, content: {
            NewScreen(showNewScreen2: $showNewScreen)
                
                
            })
            
            // METHOD 2 TRANSITION
         /*   ZStack{
                if showNewScreen{
                    NewScreen(showNewScreen2: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0)
            */
           // METHOD 3 - ANIMATION OFFSET
           /* NewScreen(showNewScreen2: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
         */
        }
    }
}

struct NewScreen : View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen2 : Bool
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
             // Method 1   presentationMode.wrappedValue.dismiss()
                showNewScreen2.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .bold()
                    .padding(10)
                
            })
        }
    }
}




struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
