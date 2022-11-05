//
//  ScrollViewReaderBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 5.11.2022.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    @State var scrollIndex : Int = 0
    @State var textFormField : String = ""
    var body: some View {
        VStack {
            TextField("Enter a here..", text: $textFormField)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            Button {
                withAnimation(.spring()){
                    if let index = Int(textFormField){
                        scrollIndex = index
                    }
                }
            } label: {
                Text("SCROLL NOW ")
            }
            
            ScrollView{
                ScrollViewReader{ proxy in
                   
                    ForEach(0..<40){ index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                }
                    .onChange(of: scrollIndex, perform: { value in
                        withAnimation(.spring()){
                            proxy.scrollTo(value, anchor: .top)
                        }
                        
                        
                    })
                }
            }
        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}
