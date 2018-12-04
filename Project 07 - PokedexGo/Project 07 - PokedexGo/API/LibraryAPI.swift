//
//  LibraryAPI.swift
//  Project 07 - PokedexGo
//
//  Created by LinkE on 2018/12/3.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit


class LibraryAPI: NSObject {
    static let sharedInstance = LibraryAPI()
    let persistencyManager = PersistencyManager()
    
    fileprivate override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(LibraryAPI.downloadImage(_:)), name: Notification.Name(downloadImageNotification), object: nil)
    }
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    
    
    func downloadImg(_ url: String) -> UIImage {
        let aUrl = URL(string: url)
        let data = try? Data(contentsOf: aUrl!)
        let image = UIImage(data: data!)
        return image!
    }
    
    @objc func downloadImage(_ notification: Notification) {
        let userInfo = notification.userInfo as! [String: AnyObject]
        let pokeImageView = userInfo["pokeImageView"] as! UIImageView?
        let pokeImageUrl = userInfo["pokeImageUrl"] as! String
        
        if let imageViewWnWrapped = pokeImageView {
            imageViewWnWrapped.image = persistencyManager.getImage(URL(string: pokeImageUrl)!.lastPathComponent)
            if imageViewWnWrapped.image == nil {
                DispatchQueue.global().async {
                    let downloadedImage = self.downloadImg(pokeImageUrl as String)
                    DispatchQueue.main.async {
                        imageViewWnWrapped.image = downloadedImage
                        self.persistencyManager.saveImage(downloadedImage, fileName: URL(string: pokeImageUrl)!.lastPathComponent)
                    }
                }
            }
        }
    }
    
}
