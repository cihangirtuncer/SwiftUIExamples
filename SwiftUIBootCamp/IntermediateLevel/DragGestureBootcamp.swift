//
//  DragGestureBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 5.11.2022.
//

import SwiftUI

struct DragGestureBootcamp: View {
    @State var offset : CGSize = .zero
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 300, height: 500)
            .offset(offset)
            .scaleEffect(getScaleAmount())
            .rotationEffect(Angle(degrees: getRotationAmount()))
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.spring()){
                            offset = value.translation
                        }
                    })
                    .onEnded({ value in
                        withAnimation(.spring()){
                            offset = .zero
                        }
                    })
            )
    }
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percantage = currentAmount / max
        let percantageAsDouble = Double(percantage)
        let maxAngle : Double = 10
        return percantageAsDouble * maxAngle
    }
}

struct DragGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp()
    }
}
