//
//  CustomCollectionViewFlowLayout.swift
//  TestApp
//
//  Created by Rakshit Majithiya on 5/9/18.
//  Copyright © 2018 Rax. All rights reserved.
//

import UIKit
class CustomCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        let attributes = super.initialLayoutAttributesForAppearingItem(at: itemIndexPath)
        attributes?.alpha = 1
        return attributes
    }
}
