//
//  GameScene.swift
//  Link
//
//  Created by Gregory D. Stula on 1/2/16.
//  Copyright (c) 2016 Gregory D. Stula. All rights reserved.
//
import Cocoa
import SpriteKit

class GameScene: SKScene {
    let link = Link()
    
    override func didMoveToView(view: SKView) {
        link.node?.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        link.node?.setScale(5.0)
        link.node?.texture = link.animate.moveE[0]
        self.addChild(link.node!)
    }
    
    override func keyUp(theEvent: NSEvent) {
        if theEvent.modifierFlags.contains(NSEventModifierFlags.NumericPadKeyMask) {
            if let arrow = theEvent.charactersIgnoringModifiers,
                let key = arrow.unicodeScalars.first?.value {
                    let k = Int(key)
                    if isDirectional(k) && lastKey == k {
                        link.stop()
                    }
            }
        }
    }
    
    func isDirectional(k:Int) -> Bool {
        return k == NSUpArrowFunctionKey || k == NSDownArrowFunctionKey ||
            k == NSRightArrowFunctionKey || k == NSLeftArrowFunctionKey
    }
    
    override func keyDown(theEvent: NSEvent) {
        interpretKeyEvents([theEvent])
    }
    
    override func moveLeft(sender: AnyObject?) {
        link.faces = .east
        link.move()
    }
    
    override func moveUp(sender: AnyObject?) {
        link.faces = .north
        link.move()
    }
    
    override func moveRight(sender: AnyObject?) {
        link.faces = .west
        link.node?.runAction(link.moveRight)
    }
    
    override func moveDown(sender: AnyObject?) {
        <#code#>
    }
    
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
