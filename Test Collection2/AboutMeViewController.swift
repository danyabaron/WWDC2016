//
//  AboutMeViewController.swift
//  WWDC
//
//  Created by Danya  on 2/21/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let twitterTapped = UITapGestureRecognizer(target: self, action: "twitterLink")
        twitterTapped.numberOfTapsRequired = 1
        twitterImage.addGestureRecognizer(twitterTapped)
        
        let linkedInTapped = UITapGestureRecognizer(target: self, action: "linkedInLink")
        linkedInTapped.numberOfTapsRequired = 1
        LinkedInImage.addGestureRecognizer(linkedInTapped)
        
        let websiteTapped = UITapGestureRecognizer(target: self, action: "websiteLink")
        websiteTapped.numberOfTapsRequired = 1
        websiteImage.addGestureRecognizer(websiteTapped)
        
        
        
        navigationItem.title = "About Me"
        
    }
    
    func twitterLink() {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://twitter.com/danyabaron")!)
        
    }
    
    func linkedInLink() {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.linkedin.com/in/danyabaron")!)
    }
    
    func websiteLink() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.danyabaron.com/")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var LinkedInImage: UIImageView!
    @IBOutlet weak var twitterImage: UIImageView!
    @IBOutlet weak var websiteImage: UIImageView!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
    */

}
