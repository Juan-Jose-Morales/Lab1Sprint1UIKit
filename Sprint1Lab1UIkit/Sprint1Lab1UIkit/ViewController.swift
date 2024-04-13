//
//  ViewController.swift
//  Sprint1Lab1UIkit
//
//  Created by Juan jose Morales on 10/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftParagraphLabel: UILabel!
    @IBOutlet weak var rightParagraphLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        leftParagraphLabel.text = "Apple es mejor que Android"
        rightParagraphLabel.text = "Android es mejor que Apple"
        imageView.image = UIImage(named: "AndroidVsApple")
        
        
        
    }


}

