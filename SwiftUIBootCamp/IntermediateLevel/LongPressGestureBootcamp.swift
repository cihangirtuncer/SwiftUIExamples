//
//  LongPressGestureBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 5.11.2022.
//

import SwiftUI


struct LongPressGestureBootcamp: View {
    @State var isComplete : Bool = false
    @State var isSuccses : Bool = false
    var body: some View {
        VStack{
            Rectangle()
                .fill(isSuccses ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            HStack{
                Text(isComplete ? "Compelte" : "Not Complete")
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal)
                    .background(isComplete ? Color.green : Color.red)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (isPressing) in
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.0)){
                                isComplete.toggle()
                            }
                        }
                        else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                                if !isSuccses {
                                    withAnimation(.easeInOut){
                                        isComplete = false
                                    }
                                }
                            })
                        }
                    
                    }
            perform: {
                withAnimation(.easeInOut){
                    isSuccses = true
                }
            }
                Text("Reset")
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                    .padding(.all , 20)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .onTapGesture {
                        isSuccses = false
                        isComplete = false
                    }
                
            }
            
        }
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
