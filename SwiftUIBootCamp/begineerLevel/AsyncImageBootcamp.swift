//
//  AsyncImageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 29.10.2022.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string:"https://picsum.photos/400")
    var body: some View {
        
        AsyncImage(url: url){ phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(15)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
      /*
        AsyncImage(url: url) { returnImage in
            returnImage
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(15)
        } placeholder: {
            ProgressView()
        }
*/
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
