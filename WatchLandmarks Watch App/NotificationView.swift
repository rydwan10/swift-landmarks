//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Muhammad Rydwan on 01/10/23.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if(landmark != nil) {
                CircleImage(image: landmark!.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown landmark")
                .font(.headline)
            Divider()
            Text(message ?? "You are within 5 miles of your favorite landmarks.")
                .font(.caption)
        }.lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            NotificationView()
            NotificationView(title: "Turtle Rock",
                                         message: "You are within 5 miles of Turtle Rock.",
                                         landmark: ModelData().landmarks[0])
        }
    }
}
