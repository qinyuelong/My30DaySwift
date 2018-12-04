//
//  PersistencyManager.swift
//  Project 07 - PokedexGo
//
//  Created by LinkE on 2018/12/3.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class PersistencyManager: NSObject {
    func saveImage(_ image: UIImage, fileName: String) {
        let path = NSHomeDirectory() + "/Documents/\(fileName)"
        let data = image.pngData()
        try? data!.write(to: URL(fileURLWithPath: path), options: [.atomic])
    }
    
    func getImage(_ fileName: String) -> UIImage? {
        let path = NSHomeDirectory() + "/Doucment/\(fileName)"
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .uncachedRead)
            return UIImage(data: data)
        } catch {
            print("error = \(error)")
            return nil
        }
    }
    
}
