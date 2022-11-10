//
//  DownloadWithCombineBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 9.11.2022.
//

import SwiftUI
import Combine

// Combine is so easier to read and sleeker than escaping

struct PostModels: Identifiable, Codable {
    let userId : Int
    let id : Int
    let title : String
    let body : String
}

class DownloadWithCombineViewModel : ObservableObject{
    
    @Published var posts : [PostModels] = []
    var cancellables = Set<AnyCancellable>()
    
    init(){
        getPost()
    }
    
    func getPost(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap (handleOutput)
            .decode(type: [PostModels].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .sink ( receiveValue: { [weak self] (returnedPost) in
                self?.posts = returnedPost
            })
            .store(in: &cancellables)
    }
    
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard
            let response = output.response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else{
            throw URLError(.badServerResponse)
            }
        return output.data
    }
}


struct DownloadWithCombineBootcamp: View {
    @StateObject var vm = DownloadWithCombineViewModel()
    var body: some View {
        List {
            ForEach(vm.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct DownloadWithCombineBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithCombineBootcamp()
    }
}
