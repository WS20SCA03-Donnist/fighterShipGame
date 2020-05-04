//
//  BasicFighter.swift
//  fighterShipGame
//
//  Created by Donavin Watson on 5/4/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class BasicFighter: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
	
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBF_Button()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupBF_Button()
		
			setImage(UIImage(named: "spaceship2.png")!, for: UIControl.State.normal)
		
    }
    
    
    func setupBF_Button() {
        
        
    }
	
    
    var position: CGPoint = CGPoint.zero {
        didSet {
            updateUI();
        }
    }

    
    
    func move(to newPosition: CGPoint) {
        position = newPosition;
    }
    
    func moveLeft() {
        position.x -= 1;
    }

    func moveRight() {
        position.y += 1;
    }

    
    func updateUI() {
        
    }
    
	

}
