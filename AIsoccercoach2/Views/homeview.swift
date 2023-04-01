//
//  homeview2.swift
//  AIsoccercoach2
//
//  Created by Mohammad Jamali on 4/1/23.
//

import SwiftUI

struct homeview: View {
    @EnvironmentObject var modelvar3 : contentmodelC
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    videoselectionview()
                } label: {
                    VStack {
                        Text("click here to analyze a video")
                        Image(systemName: "video").foregroundColor(.green)
                    }

                }

            }.accentColor(.black).font(.largeTitle).padding()
        }
    }
}

struct homeview2_Previews: PreviewProvider {
    static var previews: some View {
        homeview().environmentObject(contentmodelC())
    }
}
