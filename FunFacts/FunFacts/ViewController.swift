//
//  ViewController.swift
//  FunFacts
//
//  Created by Justin Li on 4/22/16.
//  Copyright © 2016 Justin Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet is type qualifier
    //allows interface builder (IB) to recognize outlet
    
    //weak has to do with memory management
    //has weak relationship
    
    //exclamation mark indicates that there is a chance
    //the view won't be loaded in time...
    //optional value
    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = FactModel()
    @IBOutlet weak var funFactButton: UIButton!
    
    //runs when view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factModel.getRandomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }
    
}

