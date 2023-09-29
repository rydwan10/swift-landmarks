//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muhammad Rydwan on 05/08/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritOnly = false
    
    var filteredLandmark: [Landmark] {
        modelData.landmarks.filter {
            landmark in (!showFavoritOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                Toggle(isOn: $showFavoritOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmark) {
            
                    landmark in
                    
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }.navigationTitle("Landmarks")
            
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
