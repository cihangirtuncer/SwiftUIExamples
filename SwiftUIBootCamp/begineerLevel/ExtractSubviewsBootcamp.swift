//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 21.10.2022.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    @State var count : Int = 0
    @State var titleColor : Color = Color.black
    
    var body: some View {
        VStack{
            Image(systemName: "clock")
                .font(.system(size: 50))
                .foregroundColor(Color.black)
            VStackBody
        }
        
        
    }
    
    var VStackBody: some View{
        VStack {
            HStack {
                Text("Count:")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding(.vertical)
                Text("\(count)")
                    .font(.title)
                    .foregroundColor(titleColor)
                    .padding(.vertical)
            }
            HStack(spacing:30){
                MyItem(title: "Inc", action: {
                    titleColor = Color.green
                    count += 1
                })
                MyItem(title: "Restart", action: {
                    titleColor = Color.black
                    count = 0
                })
                MyItem(title: "Dec", action: {
                    titleColor = Color.red
                    count -= 1
                })
            }
        }
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View{
    @State var count : Int = 0
    let title : String
    let action : () -> Void
   var body: some View {
       Button(action: action, label: {
           Text(title)
               .font(.subheadline)
               .bold()
               .foregroundColor(.black)
               .padding()
               .padding(.horizontal, 10)
               .background(.white)
               .cornerRadius(15)
               .shadow(radius: 10)
           
       })
        
    }
    
}

