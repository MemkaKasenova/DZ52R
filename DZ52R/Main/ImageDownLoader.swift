//
//  ImageDownLoader.swift
//  DZ52R
//
//  Created by merim kasenova on 23/5/23.
//

import UIKit

enum ImageExceptions: Error {
    case InvalidURLString
    case DataIsEmpty
}

enum ImageDownLoader {
    static func downLoadImage(urlString:String) throws  -> UIImage? {
        guard let imageURL = URL(string: urlString)  else {
            throw ImageExceptions.InvalidURLString
            return nil
        }
        
        guard let imageData = try? Data(
            contentsOf: imageURL) else {
            return nil
                }
            return UIImage(data: imageData)
                    }
                }
          
