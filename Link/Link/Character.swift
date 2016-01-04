//
//  Character.swift
//  Link
//
//  Created by Gregory D. Stula on 1/2/16.
//  Copyright © 2016 Gregory D. Stula. All rights reserved.
//

import Cocoa
import SpriteKit

// Velocity
let V = 10.0

// Speed
let S = 0.1

class Character {
    var node: SKSpriteNode? = nil
    var faces: CompassPoint = .South
    
    let moveUp = SKAction.moveBy(CGVector(dx:0, dy: V), duration: S)
    let moveRight = SKAction.moveBy(CGVector(dx:V, dy: 0), duration: S)
    let moveLeft = SKAction.moveBy(CGVector(dx:-V, dy: 0), duration: S)
    let moveDown = SKAction.moveBy(CGVector(dx:0, dy: -V), duration: S)
    
    let moveUpRight = SKAction.moveBy(CGVector(dx:V, dy: V), duration: S)
    let moveUpLeft = SKAction.moveBy(CGVector(dx:-V, dy: V), duration: S)
    let moveDownRight = SKAction.moveBy(CGVector(dx:V, dy: -V), duration: S)
    let moveDownLeft = SKAction.moveBy(CGVector(dx:-V, dy: -V), duration: S)
    
    let repeatForever = SKAction.repeatActionForever
    
    let animateTextures = {
        (textures:[SKTexture], timePerFrame: NSTimeInterval) -> Void in
        
        SKAction.animateWithTextures(textures,
            timePerFrame: timePerFrame,
                  resize: true,
                 restore: false)
    }
}
