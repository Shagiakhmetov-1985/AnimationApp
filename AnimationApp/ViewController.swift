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
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private let cornerForButton: CGFloat = 12
    private let cornerForView: CGFloat = 12
    
    private let animations = Animation.typeOfAnimation
    private let curves = Animation.typeOfCurve
    
    private var animation = Animation.animation
    private var curve = Animation.curve
    private var force = CGFloat.random(in: 1.5...1.8)
    private var duration = CGFloat.random(in: 1...2.2)
    private var delay = CGFloat.random(in: 0.1...0.4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDesign()
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        if runButton.currentTitle == "Run" {
            runAnimation()
        } else {
            animationLabel.text = "Animation: \(animation)"
            curveLabel.text = "Curve: \(curve)"
            forceLabel.text = "Force: \(format(from: force))"
            durationLabel.text = "Duration: \(format(from: duration))"
            delayLabel.text = "Delay: \(format(from: delay))"
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
        animationLabel.text = "Animation: \(animation)"
        curveLabel.text = "Curve: \(curve)"
        forceLabel.text = "Force: \(format(from: force))"
        durationLabel.text = "Duration: \(format(from: duration))"
        delayLabel.text = "Delay: \(format(from: delay))"
    }
    
    private func runAnimation() {
        viewAnimation.animation = animation
        viewAnimation.curve = curve
        viewAnimation.force = force
        viewAnimation.duration = duration
        viewAnimation.delay = delay
        viewAnimation.animate()
        animation = animations.randomElement()!
        curve = curves.randomElement()!
        force = CGFloat.random(in: 1.5...1.8)
        duration = CGFloat.random(in: 1...2)
        delay = CGFloat.random(in: 0.1...0.4)
        runButton.setTitle("Run \(animation)", for: .normal)
    }
    
    private func format(from text: CGFloat) -> String {
        String(format: "%.2f", text)
    }
}

