//
//  MultipleSheetsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title : String
}


struct MultipleSheetsBootcamp: View {
    @State var selectModel : RandomModel? = nil
    var body: some View {
        ScrollView{
            VStack(spacing:20){
                ForEach(0..<50){index in
                    Button {
                        selectModel = RandomModel(title: "\(index)")
                    } label: {
                        Text("Button \(index)")
                            .font(.title)
                    }
                }
            }
            .sheet(item: $selectModel) { model in
                NextScreen(selectModel: model)
            }
        }
    }
}
struct NextScreen: View {
    let selectModel : RandomModel
    var body: some View{
        Text(selectModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}
