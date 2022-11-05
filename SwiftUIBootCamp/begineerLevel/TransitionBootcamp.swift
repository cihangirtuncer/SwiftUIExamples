//
//  TransitionBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                    
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))// .move(edge: .bottom) - .opacity
                    //.animation(.easeInOut)
                //AnyTransition.scale.animation(.easeInOut))
                //AnyTransition.opacity.animation(.easeInOut)
                    .animation(.easeInOut)
            }
                
            
            
        }
        .edgesIgnoringSafeArea(.bottom)

    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
