//
//  ListBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = [
    "apple", "peach" , "banana", "orange"]
    @State var veggies : [String] = [
        "tomato","carrot", "Potato"
    ]
    var body: some View {
        NavigationStack{
            List{
                
                Section(header: Text("Frutis")
                    .font(.headline)
                ) {
                    ForEach(fruits , id:\.self ){ fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform:{ indexSet in
                        delete(indexSet: indexSet, objectEnum: funcEnum.fruit)
                    }
                    )
                    
                    .onMove { indices, newOffset in
                        move(indices: indices, newOffset: newOffset, objectEnum: funcEnum.fruit)
                    }
                    
                }
                
                Section {
                    
                    ForEach(veggies, id: \.self){ veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: { indexSet in
                        delete(indexSet: indexSet, objectEnum: funcEnum.veggie)
                    })
                    
                    .onMove(perform: { indices, newOffset in
                        move(indices: indices, newOffset: newOffset, objectEnum: funcEnum.veggie)
                    })
                    
                } header: {
                    Text("Veggies")
                        .font(.headline)
                }
                
            }
            .listStyle(.sidebar)
            .navigationTitle("Grocerlt List")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                        .foregroundColor(Color.orange)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        fruits.append("Coconut")
                    } label: {
                        Text("Add")
                            .foregroundColor(Color.orange)
                    }

                }
            }
        }
    }
    
    func delete(indexSet: IndexSet, objectEnum: funcEnum)  {
        if (objectEnum == funcEnum.fruit){
            fruits.remove(atOffsets: indexSet)
        }
        else if(objectEnum == funcEnum.veggie){
            veggies.remove(atOffsets: indexSet)
        }
        
    }
    
    func move(indices : IndexSet, newOffset: Int , objectEnum : funcEnum) {
        switch objectEnum {
        case  funcEnum.fruit:
            fruits.move(fromOffsets: indices, toOffset: newOffset)
        case funcEnum.veggie:
            veggies.move(fromOffsets: indices, toOffset: newOffset)
        }
    }
    
    
    }


struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

enum funcEnum {
case fruit
case veggie
}
