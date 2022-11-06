//
//  HapticsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI

class HapticManager {
    static let instance = HapticManager() // singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType ) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style : UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsBootcamp: View {
    var body: some View {
        VStack {
            Button {
                HapticManager.instance.notification(type: .success)
            } label: {
                Text("Succsess")
            }
            Button {
                HapticManager.instance.notification(type: .warning)
            } label: {
                Text("Warning")
            }
            Button {
                HapticManager.instance.notification(type: .error)
            } label: {
                Text("Error")
            }
            Divider()
            Button {
                HapticManager.instance.impact(style: .heavy)
            } label: {
                Text("Heavy")
            }
            Button {
                HapticManager.instance.impact(style: .light)
            } label: {
                Text("Light")
            }
            Button {
                HapticManager.instance.impact(style: .medium)
            } label: {
                Text("Medium")
            }
            Button {
                HapticManager.instance.impact(style: .rigid)
            } label: {
                Text("rigid")
            }
            Button {
                HapticManager.instance.impact(style: .soft)
            } label: {
                Text("soft")
            }
            
        }

    }
}

struct HapticsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HapticsBootcamp()
    }
}
