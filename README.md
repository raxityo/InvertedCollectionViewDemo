# InvertedCollectionView Demo

<img src="demo/demo.gif" width="375px"/>

It's a common practice and a simple trick to use a inverted `UICollectionView` or `UITableView` for chat applications. One caveat with `UICollectionView` is that when we insert new cells to the collectionView, they stay inverted (flipped) because of how internals of `UICollectionViewFlowLayout` work (refer this very informative [objc.io](https://www.objc.io/issues/12-animations/collectionview-animations/) article to understand it further).

After juggling with some approaches, I finally arrived to this simple solution:

```swift
class CustomCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        let attributes = super.initialLayoutAttributesForAppearingItem(at: itemIndexPath)
        attributes?.alpha = 1
        return attributes
    }
}
```

By using this simple custom `UICollectionViewFlowLayout` subclass, we are basically taking over the initial layout attributes of CollectionViewFlowLayout.

Hope this helps someone in future 💜

Cheers,<br/>
Rax - [@raxityo](https://twitter.com/raxityo)

_Licensed under DWTFYW_
