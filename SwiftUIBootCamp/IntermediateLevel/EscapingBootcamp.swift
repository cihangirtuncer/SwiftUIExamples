//
//  EscapingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 8.11.2022.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    @Published var text : String = "hello"
    
    func getData(){
         /*  downloadData2{(returnData) in
            self.text = returnData
        } */
        downloadData5 { [weak self] returnData in
            self?.text = returnData.data
        }
        
    }
    
   func downloadData() -> String {
        return "New Data"
    }
    
    func downloadData2(completionHandler: (_ data: String) -> ()){
        completionHandler("new Data2")
    }
    
    func downloadData3(completionHandler: @escaping (_ data : String)-> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 , execute: {
            completionHandler("New Data 3 coming with a 3 second delay")
        })
    }
    func downloadData4(completionHandler: @escaping (DowloadResult)-> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 , execute: {
            let result = DowloadResult(data: "Dowload data 4 coming with a 2 second delay")
            completionHandler(result)
        })
    }
    
    func downloadData5(completionHandler: @escaping DownloadCompletion){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 , execute: {
            let result = DowloadResult(data: "Dowload data 5 coming with a 2 second delay")
            completionHandler(result)
        })
    }
    
    
    struct DowloadResult {
        let data : String
    }
    
    typealias DownloadCompletion = (DowloadResult) -> ()
    
}

struct EscapingBootcamp: View {
    @StateObject var vm = EscapingViewModel()
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .padding()
            .onTapGesture {
                vm.getData()
            }
    }
}

struct EscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp()
    }
}
