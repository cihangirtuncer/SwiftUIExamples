//
//  ArraysBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI

struct UserModels : Identifiable {
    let id = UUID().uuidString
    let name: String?
    let points : Int
    let isVerified : Bool
}

class ArrayModificationsViewModel : ObservableObject {
    
    @Published var dataArray : [UserModels] = []
    @Published var filteredArray : [UserModels] = []
    @Published var mappedArray : [String] = []
    
    
    init(){
        getUser()
        updateFilteredArray()
    }
    
    func updateFilteredArray()  {
        // TODO: SORT
    //    filteredArray = dataArray.sorted(){(user1, user2) -> Bool in
     //       return user1.points > user2.points
      //  }
 // short func  filteredArray = dataArray.sorted(by: {$0.points < $1.points})
        
       // TODO: FILTER
       // filteredArray = dataArray.filter({ (user) -> Bool in
            // return user.name.contains("i")
       //       return user.isVerified
       // })
       // short func filteredArray = dataArray.filter( {$0.isVerified} )
        
        // TODO: MAP
       // mappedArray = dataArray.map({ (user) -> String in
       //     return user.name
       // })
        
       // mappedArray = dataArray.map({ $0.name })
        // if data has nil it
       // mappedArray = dataArray.compactMap({$0.name })
        
        mappedArray = dataArray
            .sorted(by: {$0.points > $1.points})
            .filter({$0.isVerified})
            .compactMap({$0.name})
        
    }
    
    
    func getUser(){
        let user1 = UserModels(name: "Nick", points: 5, isVerified: true)
        let user2 = UserModels(name: "Chris", points: 15, isVerified: false)
        let user3 = UserModels(name: "Elsa", points: 23, isVerified: false)
        let user4 = UserModels(name: nil, points: 54, isVerified: true)
        let user5 = UserModels(name: "Patrick", points: 556,isVerified: false)
        let user6 = UserModels(name: "Ferguson", points: 2, isVerified: false)
        let user7 = UserModels(name: "Alex", points: 125, isVerified: true)
        let user8 = UserModels(name: "Emly", points: 34, isVerified: false)
        let user9 = UserModels(name: "Barney", points: 5, isVerified: true)
        let user10 = UserModels(name: "Ted", points: 512, isVerified: true)
        
        self.dataArray.append(contentsOf: [
        user1,
        user2,
        user3,
        user4,
        user5,
        user6,
        user7,
        user8,
        user9,
        user10,
        ])
        
    }
}


struct ArraysBootcamp: View {
    @StateObject var vm = ArrayModificationsViewModel()
    var body: some View {
        ScrollView {
            VStack {
                ForEach(vm.mappedArray, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
            }
            
            /* VStack {
                ForEach(vm.filteredArray) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                        HStack {
                            Text("Points: \(user.points)")
                            Spacer()
                            if user.isVerified {
                                Image(systemName: "flame.fill")
                            }
                        }
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
                    .padding(.horizontal)
                }
            } */
        }
    }
}

struct ArraysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArraysBootcamp()
    }
}
