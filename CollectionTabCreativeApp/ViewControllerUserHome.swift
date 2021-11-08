//
//  ViewControllerUserHome.swift
//  CollectionTabCreativeApp
//
//  Created by Daniel Vega on 11/7/21.
//

import UIKit

class ViewControllerUserHome: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var welcomeLabelOutlet: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        welcomeLabelOutlet.text = "Welcome: \(StatVar.heirname)"
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        StatVar.imageArray.append(imageViewOutlet.image!)
    }
  
    @IBAction func photoAction(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBAction func cameraAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else{
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        
        present(imagePicker, animated: true, completion: nil)
        StatVar.imageArray.append(imageViewOutlet.image!)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) {
            self.imageViewOutlet.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        }
       
        
    }
}
