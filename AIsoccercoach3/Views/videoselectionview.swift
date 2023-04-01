//
//  videoselectionview.swift
//  AIsoccercoach2
//
//  Created by Mohammad Jamali on 4/1/23.
//

import SwiftUI

struct videoselectionview: View {
    @State var ispickershowing = false
    @State var selectedimage: UIImage?
    var body: some View {
        VStack {
            
            if selectedimage != nil {
                Image(uiImage: selectedimage!).resizable().frame(width: 300, height: 300)
            }
            
            Button {
                //show the image picker
                ispickershowing = true
            } label: {
                Text("select a photo")
            }

        }.sheet(isPresented: $ispickershowing) {
            //image picker
            imagepicker(selectedimage2: $selectedimage,ispickershowing2: $ispickershowing)
        }.accentColor(.green).font(.largeTitle).padding()

    }
}

struct videoselectionview_Previews: PreviewProvider {
    static var previews: some View {
        videoselectionview()
    }
}
