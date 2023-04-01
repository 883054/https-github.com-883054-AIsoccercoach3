//
//  homeview.swift
//  AIsoccercoach1
//
//  Created by Mohammad Jamali on 3/13/23.
//

import SwiftUI

struct homeview: View {
    @EnvironmentObject var modelvar3 : contentmodelC
    var body: some View {
        VStack {
            Spacer()
            Button {
                modelvar3.showindex2=1
            } label: {
                Text("click here to upload your video")
            }.accentColor(.black).font(.largeTitle).padding()
            Rectangle().foregroundColor(.red).padding()
            Spacer()
            Button {
                modelvar3.showindex3=1
            } label: {
                Text("click here to see the results")
            }.accentColor(.black).font(.largeTitle).padding()
            Rectangle().foregroundColor(.green).padding()
            Spacer()
            //showing waiting
          ProgressView()
        }
        
    }
}

struct homeview_Previews: PreviewProvider {
    static var previews: some View {
        homeview().environmentObject(contentmodelC())
    }
}
