//
//  LocalNotificationsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 6.11.2022.
//

import SwiftUI
import UserNotifications
import CoreLocation


class NotificaitonManager {
    static let instance = NotificaitonManager() // Singleton
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert , .sound , .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options){ (success, error) in
            if let error = error {
                print("ERROR: \(error)")
            }else{
                print("SUCCESS")
            }
        }
    }

    
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification"
        content.subtitle = "This was soo easy"
        content.sound = .default
        content.badge = 1
        
        // TIME
        
      //  let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
      // CALENDAR
        
      //  var dateComponents = DateComponents()
      //  dateComponents.hour = 17
      //  dateComponents.minute = 6
      //  let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // LOCATION
        
        let coordinates = CLLocationCoordinate2D(
            latitude: 40.00,
            longitude: 50.00
        )
        let region = CLCircularRegion(
            center: coordinates,
            radius: 100,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = true
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger )
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification()  {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
        
    }
}


struct LocalNotificationsBootcamp: View {
    var body: some View {
        VStack(spacing: 40){
            Button {
                NotificaitonManager.instance.requestAuthorization()
            } label: {
                Text("Request Permission")
            }
            Button {
                NotificaitonManager.instance.scheduleNotification()
            } label: {
                Text("Schedule Notificaiton")
            }
            Button {
                NotificaitonManager.instance.cancelNotification()
            } label: {
                Text("Cancel Notificaiton")
            }

        }
    }
}

struct LocalNotificationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationsBootcamp()
    }
}
