//
//  ViewController.swift
//  MyCollectionViewApp
//
//  Created by Usman Nazir on 05/07/2019.
//  Copyright © 2019 Usman Nazir. All rights reserved.
//

import UIKit

struct Item
{
    var nameid:String?
}

func SetupData() -> [Item]
{
    var temp:[Item] = [Item]();
    temp.append(Item(nameid:"1"))
    temp.append(Item(nameid:"2"))
    temp.append(Item(nameid:"3"))
    temp.append(Item(nameid:"4"))
    
    return temp;
}

class ViewController: UIViewController {

    @IBOutlet weak var CollectionView:UICollectionView!
    
    //DATA MODEL
    var ItemsArr = SetupData()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        SetupLayout()
    }
    
    func SetupLayout()
    {
        var bla=UICollectionViewFlowLayout()
        
        let NumberOfItems = 3
        var w = view.frame.width - (2*5); w = w / CGFloat(NumberOfItems)
        var h = w
        
        bla.itemSize = CGSize(width: w, height: h)
        bla.scrollDirection = .vertical
        bla.minimumLineSpacing = CGFloat(5)
        bla.minimumInteritemSpacing = CGFloat(5)
        
        CollectionView.setCollectionViewLayout(bla, animated: true)
    }
}



extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ItemsArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "THIS", for: indexPath) as! CollectionViewCell
        
        cell.item = ItemsArr[indexPath.row]
        
        return cell
    }
}
