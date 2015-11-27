//
//  SearchTableDataSource.swift
//  FunctionalMarvel
//
//  Created by Segii Shulga on 11/27/15.
//  Copyright © 2015 Sergey Shulga. All rights reserved.
//

import UIKit

class SearchTableDataSource<Element>: AppendableDataSource<Element> {
   
   override init(items:[T],
      tableView:UITableView ,
      cellFactory:(UITableView, NSIndexPath, T) -> UITableViewCell) {
      super.init(items: items, tableView: tableView, cellFactory: cellFactory)
   }
}


extension SearchTableDataSource:ChangeableDataSourceType {
   func setItems(animation: UITableViewRowAnimation)(items: [T]) {
      self.items = items
      self.tableView.reloadData()
   }
}
