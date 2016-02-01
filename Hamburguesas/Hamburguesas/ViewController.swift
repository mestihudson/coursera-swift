//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Hudson Ferreira Leite on 1/31/16.
//  Copyright © 2016 Hudson Ferreira Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var pais = ColeccionDePaises()
    var hamburger = ColeccionDeHamburguesa()

    @IBOutlet weak var paisLabel: UILabel!
    
    @IBOutlet weak var hamburguerLabel: UILabel!
    
    @IBAction func queroUmHamburguer(sender: UIButton) {
        paisLabel.text = pais.obtenPais()
        hamburguerLabel.text = hamburger.obterHamburguesa()
    }
}

