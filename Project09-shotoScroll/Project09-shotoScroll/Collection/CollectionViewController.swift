//
//  CollectionViewController.swift
//  Project09-shotoScroll
//
//  Created by LinkE on 2018/12/7.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    fileprivate let reuseIdentifier = "PhotoCell"
    fileprivate let thumbrailSize: CGFloat = 70.0
    fileprivate let sectionInsets = UIEdgeInsets(top: 10, left: 5.0, bottom: 10.0, right: 5.0)
    fileprivate let photos = ["photo1", "photo2", "photo3", "photo4", "photo5"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell,
            let indexPath = collectionView.indexPath(for: cell),
            let zoomedPhotoViewController = segue.destination as? ZoomedPhotoViewController {
            zoomedPhotoViewController.photoName = "photo\(indexPath.row + 1)"
        }
        
        if let cell = sender as? UICollectionViewCell,
            let indexPath = collectionView.indexPath(for: cell),
            let photoCommentViewController = segue.destination as? PhotoCommentViewController {
            photoCommentViewController.photoName = "photo\(indexPath.row + 1)"
        }
        
        if let cell = sender as? UICollectionViewCell,
            let indexPath = collectionView.indexPath(for: cell),
            let managePageViewController = segue.destination as? ManagePageViewController {
            managePageViewController.photos = photos
            managePageViewController.currentIndex = indexPath.row
        }
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
        let fullSizedImage = UIImage(named: photos[indexPath.row])
        cell.imageView.image = fullSizedImage?.thumbnailOfSize(thumbrailSize)
        return cell
    }

}


extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: thumbrailSize, height: thumbrailSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
}
