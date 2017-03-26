//
//  OUBaseTableViewController.swift
//  OuKit
//
//  Created by Nik Zakirin on 29/08/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import UIKit

public enum NZBTVCConstants {
    public static let kDefaultCellIdentifier: String = "DefaultCellIdentifier"
}

open class NZBaseTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet open weak var tableView: UITableView!
    open var sections = [NZSection]()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    open func setUp() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: NZBTVCConstants.kDefaultCellIdentifier)
    }
    
    open func prepareTableViewSections() {
        sections.removeAll()
    }
    
    open func addSection(_ name: String, configure: (NZSection) -> Void) {
        let section = NZSection(name: name)
        configure(section)
        sections.append(section)
    }
    
    open func getRow(_ indexPath: IndexPath) -> NZRow? {
        guard (indexPath as NSIndexPath).section < sections.count else { return nil }
        let section = sections[(indexPath as NSIndexPath).section]
        
        guard (indexPath as NSIndexPath).row < section.rows.count else { return nil }
        return section.rows[(indexPath as NSIndexPath).row]
    }
    
    open func getSection(_ indexPath: IndexPath) -> NZSection? {
        return sections[(indexPath as NSIndexPath).section]
    }
    
    open func defaultCell(_ indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: NZBTVCConstants.kDefaultCellIdentifier, for: indexPath)
    }
    
    open func indexPaths(_ cellNames: [String], sectionName: String) -> [IndexPath] {
        var indexPaths = [IndexPath]()
        
        for (sectionIdx, section) in sections.enumerated() {
            if section.name == sectionName {
                for (rowIdx, row) in section.rows.enumerated() {
                    if cellNames.contains(row.name) {
                        indexPaths.append(IndexPath(row: rowIdx, section: sectionIdx))
                    }
                }
            }
        }
        
        return indexPaths
    }

    open func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        return section.rows.count
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return defaultCell(indexPath)
    }
    
    open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let row = getRow(indexPath) else { return CGFloat.leastNormalMagnitude }
        return row.height ?? UITableViewAutomaticDimension
    }
    
    open func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard section < sections.count else { return CGFloat.leastNormalMagnitude }
        
        let section: NZSection = sections[section]
        
        if let headerHeight = section.headerHeight {
            return headerHeight
        }
        else {
            return section.headerView != nil ? 44 : CGFloat.leastNormalMagnitude
        }
    }
    
    open func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return sections[section].headerView
    }
}
