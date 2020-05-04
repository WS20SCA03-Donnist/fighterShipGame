//
//  ViewController.swift
//  fighterShipGame
//
//  Created by Donavin Watson on 5/4/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var FighterOneButton: BasicFighter!
	

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            if FighterOneButton.frame.contains(point) {
                FighterOneButton.move(to: point);    //Move the spaceship to a new location.
            }
        }
    }
	
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            //spaceship.move(to: point);    //Move the spaceship to a new location.
            if FighterOneButton.frame.contains(point) {
                FighterOneButton.move(to: point);    //Move the spaceship to a new location.
            }
        }
    }
    

}

