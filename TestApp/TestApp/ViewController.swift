//
//  ViewController.swift
//  TestApp
//
//  Created by Rakshit Majithiya on 5/9/18.
//  Copyright © 2018 Rax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var hitMe: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.transform.d = -1
        collectionView.dataSource = self
    }

    var total = 3
    @IBAction func hit(_ sender: Any) {
        total += 1
        UIView.performWithoutAnimation {
            collectionView.performBatchUpdates({
                collectionView.insertItems(at: [
                    IndexPath(item: total-1, section: 0),
                    IndexPath(item: total-2, section: 0)
                ])
                collectionView.deleteItems(at: [IndexPath(item: total-2, section: 0)])
                collectionView.reloadItems(at: [IndexPath(item: 0, section: 0)])
            }, completion: nil)
        }
    }
}

extension ViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return total
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        (cell.contentView.subviews[0] as! UILabel).text = "\(indexPath.item) Hi Hello Inverted!"
        cell.transform.d = -1
        return cell
    }
}
