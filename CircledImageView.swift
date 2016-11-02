//
//  CircledImageView.swift
//  Tutored
//
//  Created by Fabrizio Pera on 09/09/16.
//  You are free to distribute this software under the terms of
//  the GNU General Public License version 3.
//

import UIKit

class CircledImageView: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let width = self.frame.size.width
        self.layer.cornerRadius = width/2
        self.layer.masksToBounds = true;
    }
    
}
