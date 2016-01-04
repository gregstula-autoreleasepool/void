//
//  LinkWalks.swift
//  Link
//
//  Created by Gregory D. Stula on 1/3/16.
//  Copyright © 2016 Gregory D. Stula. All rights reserved.
//

import SpriteKit

class LinkWalks : Animation {

    let animationKey = "linkwalks"
    let timePerFrame = 0.5
    
    static let atlas = AtlasLibrary.link

    lazy var N = [atlas.textureNamed("north-0"), atlas.textureNamed("north-1")].map { n -> SKTexture in
        return noFilter(n)
    }

    lazy var S = [atlas.textureNamed("south-0"), atlas.textureNamed("south-1")].map {
        noFilter($0)
    }

    lazy var E = [atlas.textureNamed("east-0"), atlas.textureNamed("east-1")].map {
        noFilter($0)
    }

    lazy var W = [atlas.textureNamed("west-0"), atlas.textureNamed("west-1")].map {
        noFilter($0)
    }
}