//
//  DataManager.swift
//  AnimationApp
//
//  Created by Marat Shagiakhmetov on 28.04.2021.
//

struct DataManager {
    
    static let shared = DataManager()
    
    let typeOfAnimation = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX" ,"flipY",
        "fall", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
        "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
        "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "flash"
    ]
    
    let typeOfCurve = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    private init() {}
    
}
