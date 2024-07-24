//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Apple on 16/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width-20)/3, height: (collectionView.frame.size.height-30)/4)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Item \(indexPath.item) \(indexPath.row)")
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCVC
        
        cell.lblHeader.textColor = UIColor.green
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.red.cgColor
        
        cell.layer.cornerRadius = 33.33
        cell.clipsToBounds = true
        cell.lblHeader.text = "TEST"
        return cell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderCRV", for: indexPath) as! HeaderCRV
        headerView.lblHeaderTitle.text = "MyHeader Value \(indexPath.section)"
            return headerView
            
        }
        let FooterView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "FooterCRV", for: indexPath) as! FooterCRV
        FooterView.lblFooter.text = "MyFooter Value \(indexPath.section)"
        return FooterView
    }
}

