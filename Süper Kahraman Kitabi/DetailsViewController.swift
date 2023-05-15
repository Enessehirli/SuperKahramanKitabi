//
//  DetailsViewController.swift
//  Süper Kahraman Kitabi
//
//  Created by enes şehirli on 12.05.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var secilenKahramanIsmi = ""
            var secilenKahramanGorselIsmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.image = UIImage(named: secilenKahramanGorselIsmi)
        label.text = secilenKahramanIsmi
        
        
    }
    


}
