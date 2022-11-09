//
//  DownloadWitfEscapingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 9.11.2022.
//

import SwiftUI


// TODO: JSON from API in swift with URLSessin and escaping closures

struct PostModel: Identifiable, Codable {
    let userId : Int
    let id : Int
    let title : String
    let body : String
}

class DownloadWitfEscapingViewModel : ObservableObject {
    
    @Published var posts : [PostModel] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        downloadData(fromURL: url) { (returnData) in
            if let data = returnData {
                guard let newPost = try? JSONDecoder().decode([PostModel].self, from: data) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.posts = newPost

                }

            }else {
                print("No data returned")
            }
        }
    }
    
func downloadData(fromURL url : URL, completionHandler: @escaping (_ data: Data?) -> Void  ){
        URLSession.shared.dataTask(with: url) { (data, response , error) in
            
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                        print("No Data")
                completionHandler(nil)
                        return
                    }
            completionHandler(data)
          
        }.resume()
    }
    
    
}


struct DownloadWitfEscapingBootcamp: View {
    
    @StateObject var vm = DownloadWitfEscapingViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.posts) { post in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.white)
                                .frame(width: .infinity ,height: 300)
                                .shadow(radius: 15)
                            VStack(spacing: 10) {
                                Text(post.title)
                                    .font(.headline)
                                Text(post.body)
                                    .foregroundColor(Color.gray)
                                    .padding()
                            }
                        }
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        

    }
}

struct DownloadWitfEscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWitfEscapingBootcamp()
    }
}
