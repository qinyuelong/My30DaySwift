//
//  ZoomedPhotoViewController.swift
//  Project09-shotoScroll
//
//  Created by LinkE on 2018/12/7.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ZoomedPhotoViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    var photoName: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: photoName)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print(" ----------- 111111111111 ----------- \(#function)")
        
        updateMinZoomScale(forSize: view.bounds.size)
    }
    

    // 此方法的作用是设置图片居中
    fileprivate func updateConstraints(forSize size: CGSize) {
        print("----------- 222222222 ----------- \(#function)")
        print("size = \(size)")
        let yOffset = max(0, (size.height - imageView.frame.height) / 2)
        imageViewTopConstraint.constant = yOffset
        imageViewBottomConstraint.constant = yOffset
        
        let xOffset = max(0, (size.width - imageView.frame.width) / 2)
        imageViewLeadingConstraint.constant = xOffset
        imageViewTrailingConstraint.constant = xOffset
        
        view.layoutIfNeeded()
    }
    
    fileprivate func updateMinZoomScale(forSize size: CGSize) {
        print("----------- 333333333 ----------- \(#function)")
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
    }

}

extension ZoomedPhotoViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("----------- 44444444444 ----------- \(#function)")
        updateConstraints(forSize: view.bounds.size)
    }
}
