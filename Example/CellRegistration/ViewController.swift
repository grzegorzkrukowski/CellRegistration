//
//  ViewController.swift
//  CellRegistration
//
//  Created by grzegorzkrukowski on 03/08/2017.
//  Copyright (c) 2017 grzegorzkrukowski. All rights reserved.
//

import UIKit
import CellRegistration

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
}

extension ViewController : UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            return tableView.dequeueReusableCell(forIndexPath: indexPath) as StandardTableViewCell
        } else {
            return tableView.dequeueReusableCell(forIndexPath: indexPath) as XibTableViewCell
        }
    }
}
