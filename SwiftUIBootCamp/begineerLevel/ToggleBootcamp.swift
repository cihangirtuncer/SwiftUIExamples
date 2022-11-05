//
//  ToggleBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 24.10.2022.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var showGreeting = true
    var body: some View {
        Toggle(isOn: $showGreeting, label: {
            Text("Toggle")
        })
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
