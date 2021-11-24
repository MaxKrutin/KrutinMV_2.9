//
//  Animation.swift
//  KrutinMV_2.9
//
//  Created by Максим Крутинь on 24.11.2021.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
    """
        Preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(preset: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeInExpo",
                  force: Float.random(in: 0.1...1.9),
                  duration: Float.random(in: 0.1...1.9),
                  delay: Float.random(in: 0.1...1.9))
    }
}
