//
//  Animation.swift
//  AnimationApp
//
//  Created by Marat Shagiakhmetov on 28.04.2021.
//

struct Animation {
    
    static let typeOfAnimation = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX" ,"flipY",
        "fall", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
        "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
        "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "flash"
    ]
    
    static let animation = typeOfAnimation.randomElement()!
    
    static let typeOfCurve = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    static let curve = typeOfCurve.randomElement()!
    
}
