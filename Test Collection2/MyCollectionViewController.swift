//
//  ViewController.swift
//  Test Collection2
//
//  Created by Danya  on 2/15/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit


private let reuseIdentifier = "MyCell"

class MyCollectionViewController: UICollectionViewController {
    
    let backgroundImage = "sf5"
    
    var textArray = ["About Me", "Skills", "Interests", "Awards", "Education", "Projects"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        
                
    }

    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        return CGSize(width: (screenWidth - 32)/2, height: 175)
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
       let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
        

        cell.textView.text = textArray[indexPath.row]
        
        
        
        return cell
    }
    

    
    
    
 
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //Add cases here to move to different segues
        switch indexPath.row {
        case 0: self.performSegueWithIdentifier("segue1", sender: self);
        break;
        case 1: self.performSegueWithIdentifier("segue2", sender: self);
        break;
        case 2: self.performSegueWithIdentifier("segue3", sender: self);
        break;
        case 3: self.performSegueWithIdentifier("segue4", sender: self);
        break;
        case 4: self.performSegueWithIdentifier("segue5", sender: self);
        break;
        case 5: self.performSegueWithIdentifier("segue6", sender: self);
        break;
        default:
            break
        }
        
    }
    
   

}
