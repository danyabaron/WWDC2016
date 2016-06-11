//
//  CustomLayout.swift
//  WWDC
//
//  Created by Danya  on 2/23/16.
//  Copyright © 2016 Danya Baron. All rights reserved.
//

import UIKit



class CustomLayout: UICollectionViewLayout {
    
    
}

extension CustomLayout: UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            
            let flickrPhoto =  indexPath
            //2
            if var size = flickrPhoto.size {
                size.width += 10
                size.height += 10
                return size
            }
            return CGSize(width: 100, height: 100)
    }
    
    //3
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
}

