//
//  ViewController.swift
//  PresentViewWithAnimation
//
//  Created by Umesh Chauhan on 11/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let transitioningLayer = CATextLayer()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        transitioningLayer.frame = CGRect(x: 0, y: 70,
                                          width: self.view.frame.width, height: 160)
        
        view.layer.addSublayer(transitioningLayer)
        
        // Initial "red" state
        transitioningLayer.backgroundColor = UIColor.red.cgColor
        transitioningLayer.string = "Red"
    }
    
    @IBAction func runTransition(_ sender: Any) {
        
        let colors = [
            UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
            UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
            UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
            UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
            UIColor(red: 87/255, green: 141/255, blue: 155/255, alpha: 1)
        ]
        let randomColor = Int(arc4random_uniform(UInt32 (colors.count)))
        
        let transition = CATransition()
        transition.duration = 2
        
        transition.type = kCATransitionPush
        
        transitioningLayer.add(transition,
                               forKey: "transition")
        
        // Transition to "blue" state
        transitioningLayer.backgroundColor = colors[randomColor].cgColor
        transitioningLayer.string = "I m changing see..."
        transitioningLayer.fontSize = 14.0
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }

}

