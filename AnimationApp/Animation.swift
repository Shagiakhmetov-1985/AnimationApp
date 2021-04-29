//
//  Animation.swift
//  AnimationApp
//
//  Created by Marat Shagiakhmetov on 29.04.2021.
//

struct Animation {
    var animation: String
    var curve: String
    var force: Float
    var duration: Float
    var delay: Float
}

extension Animation {
    static func getAnimation() -> Animation {
        let animation = DataManager.shared.typeOfAnimation.randomElement()
        let curve = DataManager.shared.typeOfCurve.randomElement()
        let force = Float.random(in: 1.5...1.8)
        let duration = Float.random(in: 1...2)
        let delay = Float.random(in: 0.1...0.5)
        let setAnimation = Animation(
            animation: animation ?? "",
            curve: curve ?? "",
            force: force,
            duration: duration,
            delay: delay
        )
        return setAnimation
    }
}
