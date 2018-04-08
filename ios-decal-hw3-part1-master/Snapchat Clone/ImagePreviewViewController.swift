//
//  ImagePreviewViewController.swift
//  Snapchat Clone
//
//  Created by CiCi on 3/12/18.
//  Copyright © 2018 org.iosdecal. All rights reserved.
//

import UIKit

class ImagePreviewViewController: UIViewController {
    
    var imageToDisplay = UIImage(named: "dog1")
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = imageToDisplay

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
