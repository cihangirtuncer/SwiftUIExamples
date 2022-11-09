//
//  WeakSelfBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 8.11.2022.
//

import SwiftUI

struct WeakSelfBootcamp: View {
    @AppStorage("count") var count : Int?
    
    init(){
        count = 0
    }
    var body: some View {
        NavigationStack{
         NavigationLink("Navigate", destination: WeakSelfSecondScreen())
        }
        .overlay(
        Text("\(count ?? 0)")
            .font(.largeTitle)
            .padding()
            .background(Color.green.cornerRadius(10))
        , alignment: .topTrailing)
    }
}

struct WeakSelfSecondScreen: View {
    @StateObject var vm = WeakSelfSecondScreenViewModel()
    var body: some View{
        Text("Second View")
            .font(.largeTitle)
            .foregroundColor(Color.red)
        
        if let data = vm.data{
            Text(data)
        }
    }
}

class WeakSelfSecondScreenViewModel: ObservableObject {
    @Published var data : String? = nil
    
    init() {
        print("INITALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount + 1, forKey: "count")
        getData()
    }
    
    deinit {
        print("DEINITIALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount - 1, forKey: "count")
    }
    
   func getData(){
       DispatchQueue.main.asyncAfter(deadline: .now() + 3){ [weak self] in // bir işlem çok uzun sürdüğünde weak self işlem sürerken deinit fonksiyonu çalışıcak bir işlem yapılırsa de init fonksiyonunu çalıştırır ve üst üste fonksiyon çalışmasının engeller
           self?.data = "New data"
       }
    }
}

struct WeakSelfBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        WeakSelfBootcamp()
    }
}
