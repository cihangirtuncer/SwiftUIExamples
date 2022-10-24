//
//  ActionsheetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 24.10.2022.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var isShowActionsheet : Bool = false
    @State private var backgroundColor = Color.red
    var body: some View {
        Button {
            isShowActionsheet.toggle()
        } label: {
            Text("Click here")
        }
        .confirmationDialog("Change background", isPresented: $isShowActionsheet) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
