//
//  ViewModelBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 25.10.2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading : Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Banana", count: 5)
        let fruit2 = FruitModel(name: "Orange", count: 3)
        let fruit3 = FruitModel(name: "Apple", count: 30)
        let fruit4 = FruitModel(name: "Melon", count: 4)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false

        }
    }
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}


struct ViewModelBootcamp: View {
    
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THİS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(Color.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                                
                                
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RandomScreen( fruitViewModel: fruitViewModel)){
                        Image(systemName: "arrow.right")
                    }
                }
            }
            
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel : FruitViewModel
    var body: some View{
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(Color.black)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                }
                
                
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
