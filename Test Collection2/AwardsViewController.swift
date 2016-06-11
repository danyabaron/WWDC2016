//
//  AwardsViewController.swift
//  WWDC
//
//  Created by Danya  on 2/20/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit

class AwardsViewController: UIViewController {
   
    @IBOutlet weak var scrollView: UIScrollView!
   
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topColor = UIColor(red: 237/255.0, green: 209/255.0, blue: 255/255.0, alpha: 1)
        let bottomColor = UIColor(red: 204/255.0, green: 153/255.0, blue: 249/255.0, alpha: 1)
        
        let gradientColors: [AnyObject] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
      
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        navigationItem.title = "Awards"
        
        scrollView.contentSize.height = 700
        
    
        
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
