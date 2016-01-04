//
//  Link.swift
//  Link
//
//  Created by Gregory D. Stula on 1/2/16.
//  Copyright © 2016 Gregory D. Stula. All rights reserved.
//

import Cocoa
import SpriteKit

class Link : Character {
    
    let animate: LinkAnimations
    
    override init() {
        animate = LinkAnimations()
        super.init()
        node = SKSpriteNode(texture: animate.moveE[0])
    }

    func walk() -> Void {
        var animation:[SKTexture]
        switch faces {
            case .north:
                animation = animate.moveN
                break
            case .south:
                animation = animate.moveS
                break
            case .west:
                animation = animate.moveW
                break
            case .east:
                animation = animate.moveE
                break
        }
        let action = SKAction.repeatActionForever(
            SKAction.animateWithTextures(animation,
                timePerFrame: 0.09,
                resize: true,
                restore: false))
        
                    
        self.node?.runAction(action, withKey:"linkwalks")
    }
    
    func stop() {
        self.node?.removeActionForKey("linkwalks")
    }
    
    func move() {
        let action: SKAction
        switch faces {
            case .north:
                guard firstKey != nil else {
                    action = moveUp
                    break
                }
                if firstKey == NSRightArrowFunctionKey {
                    action = moveUpRight
                } else if firstKey == NSLeftArrowFunctionKey {
                    action = moveUpLeft
                }
                break
            case .south:
                guard firstKey != nil else {
                    action = moveDown
                    break
                }
                if firstKey == NSRightArrowFunctionKey {
                    action = moveDownRight
                } else if firstKey == NSLeftArrowFunctionKey {
                    action = moveDownLeft
                }
                break
            case .west:
                guard firstKey != nil else {
                    action = moveLeft
                    break
                }
                if firstKey == NSUpArrowFunctionKey {
                    action = moveUpLeft
                } else if firstKey == NSDownArrowFunctionKey {
                    action = moveDownLeft
                }
                break
            case .east:
                guard firstKey != nil else {
                    action = moveRight
                    break
                }
                if firstKey == NSUpArrowFunctionKey {
                    action = moveUpRight
                } else if firstKey == NSDownArrowFunctionKey {
                    action = moveDownRight
                }
                break
            }
            
        self.node?.runAction(action)
    }
}
