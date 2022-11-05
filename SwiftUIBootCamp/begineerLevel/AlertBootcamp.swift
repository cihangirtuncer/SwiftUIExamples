//
//  AlertBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 23.10.2022.
//

import SwiftUI

struct AlertBootcamp: View {
    
    enum AlertsEnum {
    case success
    case error
    }
    @State var showAlert = false
    @State var backgroundColor : Color = Color.white
    @State var alertEnum : AlertsEnum? = nil
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            HStack(spacing:50){
                Button {
                    alertEnum = .success
                    showAlert.toggle()
                    
                } label: {
                    Text("Success")
                        .font(.headline)
                        .foregroundColor(Color.green)
                        .padding(15)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                }
                Button {
                    alertEnum = .error
                    showAlert.toggle()
                } label: {
                    Text("Error")
                        .font(.headline)
                        .foregroundColor(Color.red)
                        .padding(15)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                }

            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
            
            
        }
    }
    func getAlert() -> Alert {
        switch alertEnum {
        case .error:
           return Alert(title: Text("There was an error"), message: nil, dismissButton: .default(Text("Ok"), action: {
               backgroundColor = .red
           }))
        case .success:
          return  Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }) )
        default:
           return Alert(title: Text("Error"))
        }
        
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
