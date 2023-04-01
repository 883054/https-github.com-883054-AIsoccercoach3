//
//  welcomeview.swift
//  AIsoccercoach1
//
//  Created by Mohammad Jamali on 3/13/23.
//

import SwiftUI

struct welcomeview: View {
    @EnvironmentObject var modelvar2 : contentmodelC
    var body: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            Image("background-soccer").resizable().scaledToFit()
            VStack {
                Spacer()
                Text("Welcome to AI Soccer Coach").foregroundColor(.black).font(.largeTitle).bold()
                Spacer()
                Button {
                    modelvar2.showindex1=1
                } label: {
                        Text("Get Started").font(.largeTitle).foregroundColor(.white)
                }.padding()
            }
        }
    }
}

struct welcomeview_Previews: PreviewProvider {
    static var previews: some View {
        welcomeview().environmentObject(contentmodelC())
    }
}
