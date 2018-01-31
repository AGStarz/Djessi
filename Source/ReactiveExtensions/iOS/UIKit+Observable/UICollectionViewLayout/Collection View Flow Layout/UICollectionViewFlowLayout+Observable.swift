//
//  UICollectionViewFlowLayout+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UICollectionViewFlowLayout {
    
    /// Observable for `minimumLineSpacing` property of `UICollectionViewFlowLayout` source.
    public var minimumLineSpacing: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumLineSpacing)
    }
    
    /// Observable for `minimumInteritemSpacing` property of `UICollectionViewFlowLayout` source.
    public var minimumInteritemSpacing: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumInteritemSpacing)
    }
    
    /// Observable for `itemSize` property of `UICollectionViewFlowLayout` source.
    public var itemSize: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.itemSize)
    }
    
    /// Observable for `estimatedItemSize` property of `UICollectionViewFlowLayout` source.
    @available(iOS 8.0, *)
    public var estimatedItemSize: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.estimatedItemSize)
    }
    
    /// Observable for `scrollDirection` property of `UICollectionViewFlowLayout` source.
    public var scrollDirection: KeyPathObservable<Source, UICollectionViewScrollDirection> {
        return source.observable(at: \Source.scrollDirection)
    }
    
    /// Observable for `headerReferenceSize` property of `UICollectionViewFlowLayout` source.
    public var headerReferenceSize: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.headerReferenceSize)
    }
    
    /// Observable for `footerReferenceSize` property of `UICollectionViewFlowLayout` source.
    public var footerReferenceSize: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.footerReferenceSize)
    }
    
    /// Observable for `sectionInset` property of `UICollectionViewFlowLayout` source.
    public var sectionInset: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.sectionInset)
    }
    
    /// Observable for `sectionInsetReference` property of `UICollectionViewFlowLayout` source.
    @available(iOS 11.0, *)
    public var sectionInsetReference: KeyPathObservable<Source, UICollectionViewFlowLayoutSectionInsetReference> {
        return source.observable(at: \Source.sectionInsetReference)
    }
    
    /// Observable for `sectionHeadersPinToVisibleBounds` property of `UICollectionViewFlowLayout` source.
    @available(iOS 9.0, *)
    public var sectionHeadersPinToVisibleBounds: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.sectionHeadersPinToVisibleBounds)
    }
    
    /// Observable for `sectionFootersPinToVisibleBounds` property of `UICollectionViewFlowLayout` source.
    @available(iOS 9.0, *)
    public var sectionFootersPinToVisibleBounds: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.sectionFootersPinToVisibleBounds)
    }
}
