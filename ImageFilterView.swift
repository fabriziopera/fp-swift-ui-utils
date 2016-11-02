//
//  ImageFilterView.swift
//  mock05
//
//  Created by Fabrizio Pera on 09/09/16.
//  You are free to distribute this software under the terms of
//  the GNU General Public License version 3.
//

import UIKit

class ImageFilterView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradient: CAGradientLayer = self.layer as! CAGradientLayer
        gradient.frame = self.bounds
        let startColor = UIColor.clearColor().CGColor
        let endColor = UIColor(white: 0, alpha: 0.5).CGColor
        gradient.colors = [startColor, endColor]
        gradient.startPoint = CGPointMake(0.5, 0)
        gradient.endPoint = CGPointMake(0.5,1)
    }
    
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }

}
