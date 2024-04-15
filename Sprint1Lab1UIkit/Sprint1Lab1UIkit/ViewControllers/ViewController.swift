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
    var lastModifiedIndex: Int = -1
    var textIndex = 0
    let texts = [
            """
                    Apple Inc. es una empresa estadounidense multinacional que diseña y produce equipos electrónicos, software y servicios en línea, con sede en Cupertino, California.
                    Fundada por Steve Jobs, Steve Wozniak y Ronald Wayne en 1976, la empresa es conocida por diseñar, desarrollar y vender equipos electrónicos, software y servicios en línea.
                    """,
                    """
                    Android es un sistema operativo móvil desarrollado por Google, basado en el núcleo Linux y diseñado principalmente para dispositivos móviles con pantalla táctil como teléfonos inteligentes y tabletas.
                    Android fue inicialmente desarrollado por Android Inc., que Google respaldó financieramente y más tarde compró en 2005.
                    """,
                    """
                    Linux es un sistema operativo de código abierto basado en UNIX que se ha convertido en una de las principales plataformas de sistemas operativos en todo el mundo.
                    Desarrollado por una comunidad de desarrolladores de software de todo el mundo, Linux es conocido por su estabilidad, seguridad y capacidad de personalización.
                    """,
                    """
                    Apple es mejor que Android
                    """,
                    """
                    Android es mejor que Apple
                    """,
                    """
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus auctor justo vel efficitur efficitur. Phasellus auctor interdum odio, sed pellentesque metus cursus nec. Integer nec arcu ac leo ultricies ultricies. Fusce in velit et magna iaculis vehicula ut sed tortor. Ut viverra lorem sit amet urna convallis convallis. Sed semper semper urna, eu consequat turpis. Integer lobortis id metus vel bibendum. Proin eu metus eu risus tincidunt tempus. Nulla at ex quis sem vestibulum rutrum. Nam ac vehicula nisi. Aliquam sodales ante ut magna auctor, nec fringilla purus malesuada. Nulla facilisi. Maecenas facilisis efficitur mauris ac mattis. In euismod justo id urna scelerisque tempor.
                    """
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.contentMode = .top
        imageView.image = UIImage(named: "AndroidVsApple")
        changeTextButton.setTitle("Cambiar texto", for: .normal)
        changeTextButton.addTarget(self, action: #selector(changeText), for: .touchUpInside)
        
        leftParagraphLabel.text = texts[0]
        rightParagraphLabel.text = texts[1]

    }
    
    @IBAction func changeText (){
        
        let randomLabelIndex = Bool.random() ? 0 : 1
        
        var newTextIndex = Int.random(in: 0..<texts.count)
        
        if newTextIndex == lastModifiedIndex{
            newTextIndex = (newTextIndex + 1) % texts.count
        }
        
        if randomLabelIndex == 0{
            leftParagraphLabel.text = texts[newTextIndex]
        }else{
            rightParagraphLabel.text = texts[newTextIndex]
        }
        
        lastModifiedIndex = newTextIndex
    }
}


