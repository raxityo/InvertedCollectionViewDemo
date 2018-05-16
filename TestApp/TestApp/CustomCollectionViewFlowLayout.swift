//
//  CustomCollectionViewFlowLayout.swift
//  TestApp
//
//  Created by Rakshit Majithiya on 5/9/18.
//  Copyright © 2018 Rax. All rights reserved.
//

import UIKit
class CustomCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let attributes = super.layoutAttributesForElements(in: rect) else {
            return nil
        }
        attributes.forEach {
            $0.alpha = 1
            $0.transform.d = -1
        }
        return attributes
    }
}
