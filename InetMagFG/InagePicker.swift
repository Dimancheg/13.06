//
//  InagePicker.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 21/05/2023.
//

import SwiftUI

//struct ImagePicker: UIViewControllerRepresentable{
//    @Environment (\.presentationMode) private var presentationMode
//    var soursTupe: UIImagePickerController.SourceType = .photoLibrary
//    @Binding var selectedImage: UIImage
//    
//    func makeUIViewController(context: UIViewRepresentableContext<ImagePicker>) -> UIViewController {
//        let imagePicker = UIImagePickerController()
//        
//        imagePicker.sourceType = soursTupe
//        imagePicker.delegate = context.coordinator
//        return imagePicker
//    }
//    
//    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
//    
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//    
//    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
//        var parent: ImagePicker
//        
//        init(parent: ImagePicker) {
//            self.parent = parent
//        }
//        
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            if let image = info[UIInputViewController.InfoKey.originalImage] as? UIImage {
//                parent.selectedImage = image
//            }
//            parent.presentationMode.wrappedValue.dismiss()
//        }
//    }
//}
//
