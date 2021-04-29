//
//  ViewController.swift
//  AnimationApp
//
//  Created by Marat Shagiakhmetov on 28.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var viewAnimation: SpringView!
    @IBOutlet weak var runButton: SpringButton!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    private let cornerForButton: CGFloat = 12
    private let cornerForView: CGFloat = 12
    
    private var animation = Animation.getAnimation().animation
    private var curve = Animation.getAnimation().curve
    private var force = CGFloat(Animation.getAnimation().force)
    private var duration = CGFloat(Animation.getAnimation().duration)
    private var delay = CGFloat(Animation.getAnimation().delay)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDesign()
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        if runButton.currentTitle == "Run" {
            runAnimation()
        } else {
            resultsLabel.text = """
            Animation: \(animation)
            Curve: \(curve)
            Force: \(format(from: force))
            Duration: \(format(from: duration))
            Delay: \(format(from: delay))
            """
            runAnimation()
        }
    }
    
    private func setupDesign() {
        //button
        runButton.layer.cornerRadius = cornerForButton
        runButton.setTitle("Run", for: .normal)
        runButton.setTitleColor(.black, for: .normal)
        //view
        viewAnimation.layer.cornerRadius = cornerForView
        //label
        resultsLabel.text = """
        Animation: \(animation)
        Curve: \(curve)
        Force: \(format(from: force))
        Duration: \(format(from: duration))
        Delay: \(format(from: delay))
        """
    }
    
    private func runAnimation() {
        viewAnimation.animation = animation
        viewAnimation.curve = curve
        viewAnimation.force = force
        viewAnimation.duration = duration
        viewAnimation.delay = delay
        viewAnimation.animate()
        animation = Animation.getAnimation().animation
        curve = Animation.getAnimation().curve
        force = CGFloat(Animation.getAnimation().force)
        duration = CGFloat(Animation.getAnimation().duration)
        delay = CGFloat(Animation.getAnimation().delay)
        runButton.setTitle("Run \(animation)", for: .normal)
    }
    
    private func format(from text: CGFloat) -> String {
        String(format: "%.2f", text)
    }
}

