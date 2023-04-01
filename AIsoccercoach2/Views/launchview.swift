//
//  launchview.swift
//  AIsoccercoach1
//
//  Created by Mohammad Jamali on 3/11/23.
//

import SwiftUI

struct launchview: View {
    @EnvironmentObject var modelvar1 : contentmodelC
    var body: some View {
        if  modelvar1.showindex1 == 0 {
            welcomeview()
        } else {
            homeview()
        }
        
    }
}

struct launchview_Previews: PreviewProvider {
    static var previews: some View {
        launchview().environmentObject(contentmodelC())
    }
}
