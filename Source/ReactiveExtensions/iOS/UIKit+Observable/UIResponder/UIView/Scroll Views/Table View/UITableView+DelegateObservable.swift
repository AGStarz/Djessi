//
//  UITableView+DelegateObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 23.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

/// <#Description#>
public struct AnyTableViewDelegateProxy: DelegateProxy {
    
    /// <#Description#>
    unowned public let source: UITableViewDelegateHandler
}

extension DelegateProxy where Source: UITableViewDelegateHandler {
    
    /// <#Description#>
    public var didSelectRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.didSelectRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didDeselectRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.didDeselectRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didHighlightRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.didHighlightRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didUnhighlightRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.didUnhighlightRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didEndEditingRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowOptionalIndexPathContainer> {
        return source.observable(at: \Source.didEndEditingRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var willBeginEditingRowAt: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.willBeginEditingRowAt, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var accessoryButtonTappedForRowWith: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewRowIndexPathContainer> {
        return source.observable(at: \Source.accessoryButtonTappedForRowWith, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var willDisplayFooterView: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewSectionViewContainer> {
        return source.observable(at: \Source.willDisplayFooterView, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var willDisplayHeaderView: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewSectionViewContainer> {
        return source.observable(at: \Source.willDisplayHeaderView, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didEndDisplayingFooterView: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewSectionViewContainer> {
        return source.observable(at: \Source.didEndDisplayingFooterView, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didEndDisplayingHeaderView: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewSectionViewContainer> {
        return source.observable(at: \Source.didEndDisplayingHeaderView, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var willDisplay: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewCellIndexPathContainer> {
        return source.observable(at: \Source.willDisplay, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var didEndDisplaying: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewCellIndexPathContainer> {
        return source.observable(at: \Source.didEndDisplaying, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var performAction: KeyPathObservable<Source, UITableViewDelegateHandler.TableViewActionForRowContainer> {
        return source.observable(at: \Source.performAction, shouldObserveInitialValue: false)
    }
}

@objcMembers
public class UITableViewDelegateHandler: NSObject {
    
    static var associationKey = "djessi_sharedAssociatedDelegate"
    
    public class TableViewContainer: NSObject {
        unowned public let tableView: UITableView
        
        init(tableView t: UITableView) {
            tableView = t
        }
    }
    
    public class TableViewRowIndexPathContainer: TableViewContainer {
        public let indexPath: IndexPath
        
        init(tableView: UITableView, indexPath i: IndexPath) {
            indexPath = i
            
            super.init(tableView: tableView)
        }
    }
    
    public class TableViewRowOptionalIndexPathContainer: TableViewContainer {
        public let indexPath: IndexPath?
        
        init(tableView: UITableView, indexPath i: IndexPath?) {
            indexPath = i
            
            super.init(tableView: tableView)
        }
    }
    
    public class TableViewSectionViewContainer: TableViewContainer {
        unowned public let view: UIView
        public let section: Int
        
        init(tableView: UITableView, view v: UIView, section s: Int) {
            view = v
            section = s
            
            super.init(tableView: tableView)
        }
    }
    
    public class TableViewCellIndexPathContainer: TableViewContainer {
        unowned public let cell: UITableViewCell
        public let indexPath: IndexPath
        
        init(tableView: UITableView, cell c: UITableViewCell, indexPath i: IndexPath) {
            cell = c
            indexPath = i
            
            super.init(tableView: tableView)
        }
    }
    
    public class TableViewActionForRowContainer: TableViewContainer {
        public let sender: Any?
        public let action: Selector
        public let indexPath: IndexPath
        
        init(tableView: UITableView, action a: Selector, indexPath i: IndexPath, sender s: Any?) {
            action = a
            indexPath = i
            sender = s
            
            super.init(tableView: tableView)
        }
    }
    
    dynamic var didSelectRowAt: TableViewRowIndexPathContainer
    dynamic var didDeselectRowAt: TableViewRowIndexPathContainer
    dynamic var didHighlightRowAt: TableViewRowIndexPathContainer
    dynamic var didEndEditingRowAt: TableViewRowOptionalIndexPathContainer
    dynamic var didUnhighlightRowAt: TableViewRowIndexPathContainer
    dynamic var willBeginEditingRowAt: TableViewRowIndexPathContainer
    dynamic var accessoryButtonTappedForRowWith: TableViewRowIndexPathContainer
    dynamic var willDisplayFooterView: TableViewSectionViewContainer
    dynamic var willDisplayHeaderView: TableViewSectionViewContainer
    dynamic var didEndDisplayingFooterView: TableViewSectionViewContainer
    dynamic var didEndDisplayingHeaderView: TableViewSectionViewContainer
    dynamic var willDisplay: TableViewCellIndexPathContainer
    dynamic var didEndDisplaying: TableViewCellIndexPathContainer
    dynamic var performAction: TableViewActionForRowContainer
    
    init(tableView: UITableView) {
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = UITableViewCell()
        
        didSelectRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        didDeselectRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        didHighlightRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        didUnhighlightRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        didEndEditingRowAt = TableViewRowOptionalIndexPathContainer(tableView: tableView, indexPath: indexPath)
        willBeginEditingRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        accessoryButtonTappedForRowWith = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
        willDisplayFooterView = TableViewSectionViewContainer(tableView: tableView, view: cell, section: 0)
        willDisplayHeaderView = TableViewSectionViewContainer(tableView: tableView, view: cell, section: 0)
        didEndDisplayingFooterView = TableViewSectionViewContainer(tableView: tableView, view: cell, section: 0)
        didEndDisplayingHeaderView = TableViewSectionViewContainer(tableView: tableView, view: cell, section: 0)
        willDisplay = TableViewCellIndexPathContainer(tableView: tableView, cell: cell, indexPath: indexPath)
        didEndDisplaying = TableViewCellIndexPathContainer(tableView: tableView, cell: cell, indexPath: indexPath)
        performAction = TableViewActionForRowContainer(tableView: tableView, action: #selector(copy), indexPath: indexPath, sender: nil)
        
        super.init()
        
        tableView.delegate = self
    }
}

extension UITableViewDelegateHandler: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        didDeselectRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        didHighlightRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        didEndEditingRowAt = TableViewRowOptionalIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        didUnhighlightRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
        willBeginEditingRowAt = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        accessoryButtonTappedForRowWith = TableViewRowIndexPathContainer(tableView: tableView, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        willDisplayFooterView = TableViewSectionViewContainer(tableView: tableView, view: view, section: section)
    }
    
    public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        willDisplayHeaderView = TableViewSectionViewContainer(tableView: tableView, view: view, section: section)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        didEndDisplayingFooterView = TableViewSectionViewContainer(tableView: tableView, view: view, section: section)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        didEndDisplayingHeaderView = TableViewSectionViewContainer(tableView: tableView, view: view, section: section)
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        willDisplay = TableViewCellIndexPathContainer(tableView: tableView, cell: cell, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        didEndDisplaying = TableViewCellIndexPathContainer(tableView: tableView, cell: cell, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        performAction = TableViewActionForRowContainer(tableView: tableView, action: action, indexPath: indexPath, sender: sender)
    }
}
