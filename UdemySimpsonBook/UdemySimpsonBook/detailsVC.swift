//
//  detailsVC.swift
//  UdemySimpsonBook
//
//  Created by Kaan Yalçınkaya on 24.11.2021.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpsons : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpsons?.name
        jobLabel.text = selectedSimpsons?.job
        imageView.image = selectedSimpsons?.image

        // Do any additional setup after loading the view.
    }
    


}
