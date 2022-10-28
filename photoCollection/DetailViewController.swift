//
//  DetailViewController.swift
//  photoCollection
//
//  Created by gih96984 on 2022/10/28.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var showImage: UIImageView!
    
    var images:Scape!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = images.name
        showImage.image = UIImage(named: images.imageName)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
