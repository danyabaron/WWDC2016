//
//  SkillsViewController.swift
//  WWDC
//
//  Created by Danya  on 2/19/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topColor = UIColor(red: 142/255.0, green: 46/255.0, blue: 227/255.0, alpha: 1)
        let bottomColor = UIColor(red: 142/255.0, green: 46/255.0, blue: 227/255.0, alpha: 1)
        
        let gradientColors: [AnyObject] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
    
        
        navigationItem.title = "Skills"
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
