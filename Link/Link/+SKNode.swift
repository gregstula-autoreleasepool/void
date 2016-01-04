//
//  Link+SKNode.swift
//  Link
//
//  Created by Gregory D. Stula on 1/3/16.
//  Copyright © 2016 Gregory D. Stula. All rights reserved.
//

import SpriteKit

extension SKNode {
    
    var middleOfTheFrame:CGPoint {
        return CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
    }
    
    var maxY:CGFloat {
        return CGRectGetMaxX(self.frame)
    }
    
    
    var maxX:CGFloat {
        return CGRectGetMaxX(self.frame)
    }
    
}