//
//  PageModel.swift
//  PinchApp
//
//  Created by AHMET HAKAN YILDIRIM on 6.01.2023.
//

import Foundation

struct Page: Identifiable {
    
    let id: Int
    let imageName: String
    
}


extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
