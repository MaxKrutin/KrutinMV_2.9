//
//  ViewController.swift
//  KrutinMV_2.9
//
//  Created by Максим Крутинь on 24.11.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}

