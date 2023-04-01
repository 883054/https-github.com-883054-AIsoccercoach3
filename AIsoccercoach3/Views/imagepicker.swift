//
//  imagepicker.swift
//  image-picker-demo
//
//  Created by Mohammad Jamali on 4/1/23.
//

import Foundation
import UIKit
import SwiftUI

struct imagepicker: UIViewControllerRepresentable {
    @Binding var selectedimage2: UIImage?
    @Binding var ispickershowing2: Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagepicker = UIImagePickerController()
        imagepicker.sourceType = .photoLibrary
        imagepicker.delegate = context.coordinator
        return imagepicker
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}

class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var parent: imagepicker
    init(_ picker: imagepicker) {
        self.parent = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //run code when user has selected an image
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //we were able to get the image
            DispatchQueue.main.async {
                self.parent.selectedimage2 = image
            }
        }
            //dismiss the picker
        parent.ispickershowing2 = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //run code when user has cancelled the picker UI
        //dismiss the picker
    parent.ispickershowing2 = false
    }
}
