//
//  CAGradientLayer+Convenience.swift
//  WWDC
//
//  Created by Danya  on 2/18/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit

extension CAGradientLayer {

    func backgroundGradient1() -> CAGradientLayer {
        
        let topColor = UIColor(red: 155/255.0, green: 164/255.0, blue: 236/255.0, alpha: 1)
        let bottomColor = UIColor(red: 247/255.0, green: 158/255.0, blue: 236/255.0, alpha: 1)
        
        let gradientColors: [AnyObject] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
       return gradientLayer
    }
}
