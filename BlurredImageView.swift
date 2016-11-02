//
//  BlurredImageView.swift
//  FP Swift UI Utils
//
//  Created by Fabrizio Pera on 09/09/16.
//  You are free to distribute this software under the terms of
//  the GNU General Public License version 3.
//

import UIKit

@IBDesignable class BlurredImageView: UIImageView {

    @IBInspectable var blurValue: CGFloat = 5
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        image = super.image
    }

    var blurredImg = UIImage()
    override var image: UIImage?{
        set{
            let gaussianBlurFilter = CIFilter(name: "CIGaussianBlur")
            gaussianBlurFilter?.setDefaults()
            let inputImage = CIImage(CGImage: (newValue?.CGImage)!)
            gaussianBlurFilter?.setValue(inputImage, forKey: kCIInputImageKey)
            gaussianBlurFilter?.setValue(blurValue, forKey: kCIInputRadiusKey)
            let outputImage = gaussianBlurFilter?.outputImage
            let context = CIContext(options: nil)
            let cgimg = context.createCGImage(outputImage!, fromRect: inputImage.extent)
            blurredImg = UIImage(CGImage: cgimg!)
            super.image = blurredImg
        }
        get{
            return super.image
        }
    }
}