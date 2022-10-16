//
//  TextBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! I m starting SwidtUI, SwiftUI is so good i liked swift and i m flutter developer and i will swift developer.")
        //.font(.body)
        //.fontWeight(.semibold)
        //.bold()
        //.underline()
        // .underline(true, color: Color.green)
        //.italic()
        //.strikethrough(true, color: Color.red)
        //.font(.system(size: 24, weight: .bold, design: .serif))
        //.baselineOffset(5)
        //.kerning(10)
        .multilineTextAlignment(.leading)
        .foregroundColor(Color.orange)
        .frame(width: 200, height: 100, alignment: .leading)
        .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
