//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 25.10.2022.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
   @Published var dataArray : [String] = []
    
    init() {
        getData()
    }
    
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iMac", "iPad", "Apple Watch"])
    }
    
    
}


struct EnvironmentObjectBootcamp: View {
    @StateObject var environmentViewModel : EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationStack{
            List{
                ForEach(environmentViewModel.dataArray, id: \.self){item in
                    NavigationLink(destination: DetailView(itemName: item), label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("Ios Devices")
        }
        .environmentObject(environmentViewModel)
    }
}

struct DetailView : View {
    let itemName : String
    var body: some View{
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            NavigationLink(destination: FinalViews(), label: {
                Text(itemName)
                    .font(.title)
                    .bold()
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            })
        }
    }
}

struct FinalViews : View {
    @EnvironmentObject var finalViewsViewModel : EnvironmentViewModel
    var body: some View{
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black,Color.blue]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(finalViewsViewModel.dataArray, id: \.self){item in
                    Text(item)
                        .font(.title)
                        .bold()
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                    
                }
            }
        }
        
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
