//
//  ButtonStylsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 31.10.2022.
//

import SwiftUI

struct ButtonStylsBootcamp: View {
    var body: some View {
        VStack{
            Button {
                
            } label: { 
                Text("Button Title")
                    
                    
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .buttonStyle(.borderedProminent)

          //  .buttonStyle(.bordered)
            
            Button {
                
            } label: {
                Text("Button Title")
                   
                    
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonBorderShape(.roundedRectangle(radius: 9))

            .buttonStyle(.borderedProminent)

          //  .buttonStyle(.borderedProminent)
            
            Button {
                
            } label: {
                Text("Button Title")
                    
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)


          //  .buttonStyle(.plain)
            
            Button {
                
            } label: {
                Text("Button Title")
                   
                    
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)

           // .buttonStyle(.borderless)
            

        }
    }
}

struct ButtonStylsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylsBootcamp()
    }
}
