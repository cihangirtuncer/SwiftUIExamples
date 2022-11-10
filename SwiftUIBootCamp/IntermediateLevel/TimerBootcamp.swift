//
//  TimerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 11.11.2022.
//

import SwiftUI


// TODO: THIS CODE İS TOO OLD DOES NOT WORK
struct TimerBootcamp: View {
    let timer  = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    // TODO: Current Time
   /*
    @State var currentDate : Date = Date()
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
       // formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    */
    
    // TODO: Countdown
   /* @State var count : Int = 10
    @State var finishedText : String? = nil
    */
    @State var timeRemaining : String = ""
    let futureDate : Date = Calendar.current.date(bySetting: .day, value: 1, of: Date()) ?? Date()
    func updateTimeRemaining(){
        let remaining = Calendar.current.dateComponents([.hour, .minute , .second], from: Date(), to: futureDate)
        let hour = remaining.hour ?? 0
        let minute = remaining.minute ?? 0
        let second = remaining.second ?? 0
        timeRemaining = "\(hour):\(minute):\(second)"
        
    }
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.black, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            // dateFormatter.string(from: currentDate)
            //finishedText ?? "\(count)"
            Text(timeRemaining)
                .font(.system(size:50, weight: .semibold, design: .rounded))
                .foregroundColor(Color.white)
                .minimumScaleFactor(0.1)
        }
       /* .onReceive(timer) { value in
            currentDate = value
        } */
       /* .onReceive(timer, perform: { _ in
            if count < 1 {
                finishedText = "WOW!"
            }else {
                count -= 1
            }
        })
        */
        .onReceive(timer) { _ in
            updateTimeRemaining()
        }
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}
