//
//  SheetsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color.teal
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.white)
                    .padding(20)
                    .background(Color.orange.cornerRadius(15))
                
            })
           /* .fullScreenCover(isPresented: $showSheet, content: {
                SecondView()
            }) */
            .sheet(isPresented: $showSheet, content: {
                SecondView()
            })
        }
    }
}

struct SecondView : View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
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


struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
