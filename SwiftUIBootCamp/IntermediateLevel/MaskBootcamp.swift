//
//  MaskBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI

struct MaskBootcamp: View {
    @State var rating: Int = 0
    var body: some View {
        ZStack{
            starsView
                .overlay(
                    OverlayView
                        .mask(starsView)
                )
        }
    }
    
    private var OverlayView : some View{
        GeometryReader{geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(false)
    }
      
    private var starsView : some View{
        HStack{
            ForEach(1..<6){index in
                    Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
                    .onTapGesture {
                        withAnimation {
                            rating = index
                        }
                    }
            }
        }
    }
}



struct MaskBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MaskBootcamp()
    }
}
