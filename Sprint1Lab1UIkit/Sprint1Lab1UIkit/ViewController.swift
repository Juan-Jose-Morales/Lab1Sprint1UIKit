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
    @IBOutlet weak var changeTextButton: UIButton!
    var lastModifiedLabel: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftParagraphLabel.text = "Apple es mejor que Android"
        rightParagraphLabel.text = "Android es mejor que Apple"
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "AndroidVsApple")
        changeTextButton.setTitle("Cambiar texto", for: .normal)
        changeTextButton.addTarget(self, action: #selector(changeText), for: .touchUpInside)

    }
    
    @IBAction func changeText (){
        
        let  newText = RandomTextGenerator.random()
        let labelToUpdate: UILabel
        if let lastLabel = lastModifiedLabel{
            
            labelToUpdate = (lastLabel == leftParagraphLabel) ? rightParagraphLabel : leftParagraphLabel
        }else{
            labelToUpdate = Bool.random() ? leftParagraphLabel : rightParagraphLabel
        }
        labelToUpdate.text = newText
        lastModifiedLabel = labelToUpdate
    }
}

class RandomTextGenerator{
    
    static let text = "Linux es mejor que todo"
    
        static func random() -> String{
            let startIndex = text.index(text.startIndex, offsetBy: Int.random(in: 0..<text.count/2))
            let endIndex = text.index(text.startIndex, offsetBy: Int.random(in: text.count/2..<text.count))
            return String(text[startIndex..<endIndex])
        }
}
