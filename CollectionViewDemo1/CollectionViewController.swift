//
//  CollectionViewController.swift
//  CollectionViewDemo1
//
//  Created by qingjiezhao on 7/15/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    var array = [String]()
    var btnAry = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        array = ["A","B","C","D"]
        btnAry = ["AA","BB","CC","DD"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        var lbl = cell.viewWithTag(1) as! UILabel
        lbl.text = array[indexPath.row]
        
        var btn = cell.viewWithTag(2) as! UIButton
        btn.setTitle(btnAry[indexPath.row], forState: .Normal)
        
        return cell
    }
    

}

