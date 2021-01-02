//
//  BountyInfo.swift
//  BountyList
//
//  Created by 박성수 on 2020/12/25.
//

import UIKit


struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}
