//
//  InitializerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let count: Int
    let title: String
    let bacgroundColor : Color
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if (fruit == .apple ) {
            self.bacgroundColor = .red
            self.title = "Apple"
            
        }else{
            self.bacgroundColor = .orange
            self.title = "Orange"
        }
    }
    
    enum Fruit {
    case apple
    case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text(title)
                .font(.title)
                .foregroundColor(Color.white)
            
        }
        .frame(width: 150, height: 150)
        .background(bacgroundColor)
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp(count: 100, fruit: .orange)
            InitializerBootcamp(count: 70, fruit: .apple)
        }
        
        
    }
}
