//
//  AtlasLibrarian.swift
//  Link
//
//  Created by Gregory D. Stula on 1/2/16.
//  Copyright © 2016 Gregory D. Stula. All rights reserved.
//

import Cocoa
import SpriteKit

protocol Animation {
    var animationKey:String { get }
    var timePerFrame:NSTimeInterval { get }
}

extension Animation {

    func noFilter(texture:SKTexture) -> SKTexture {
        texture.filteringMode = .Nearest
        return texture
    }
}
