//
//  HikeBadges.swift
//  Landmarks
//
//  Created by Muhammad Rydwan on 09/09/23.
//

import SwiftUI

struct HikeBadges: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadges_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadges(name: "Preview Testing")
    }
}
