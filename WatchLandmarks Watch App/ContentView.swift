//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Muhammad Rydwan on 30/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
