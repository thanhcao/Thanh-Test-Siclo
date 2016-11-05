//
//  showAllView.swift
//  Siclo app
//
//  Created by tonycao on 11/5/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import Foundation
import UIKit
public class ShowAllView:BaseNibView{
    @IBOutlet var showAllSwitch: UISwitch!
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.showAllSwitch.onTintColor = UIColor.from(hexString:"D98E27")
    }
}
