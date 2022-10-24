//
//  ModelBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 24.10.2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    
    
}

struct ModelBootcamp: View {
    @State var users : [UserModel] = [
        UserModel(displayName: "Cihangir", userName: "Cihangirtuncer", followerCount: 600),
        UserModel(displayName: "Mustafa", userName: "Mustafagur", followerCount: 800),
    UserModel(displayName: "Emirhan", userName: "Emirhanserin", followerCount: 1000),
    UserModel(displayName: "Egemen", userName: "Egemenkarakaya", followerCount: 1500)
    ]
    var body: some View {
        NavigationStack{
            List{
                ForEach(users){ user in
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(height: 60)
                            .shadow(radius: 10)
                        HStack(alignment: .top){
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .padding(.horizontal,10)
                                Text("@\(user.userName)")
                                    .padding(.horizontal,10)
                            }
                            Spacer()
                            Text("\(user.followerCount)")
                                .padding(.horizontal,10)
                        }
                    }
                        
                    
                }
            }
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
