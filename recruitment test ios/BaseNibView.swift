//
//  BaseNibView.swift
//  Siclo app
//
//  Created by tonycao on 11/5/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import Foundation
import UIKit
public class BaseNibView:UIView{
    var rootView:UIView?;
    public init(){
        super.init(frame:CGRect.zero)
        self.initialize(String(describing: type(of: self)))
    }
    
    public init(_ xibName:String){
        super.init(frame:CGRect.zero)
        self.initialize(xibName)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    public func initialize(_ xibName:String){
        let subviews = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)
        if let subviewsList = subviews , subviewsList.count > 0{
            self.rootView = subviewsList[0] as? UIView;
            self.frame = self.rootView!.bounds;
            self.addSubview(self.rootView!)
        }
        self.viewDidLoad()
    }
    
    public func setFrame(frame:CGRect){
        super.frame = frame
        if(self.rootView != nil) {
            self.rootView?.frame = self.bounds;
        }
    }
    
    public func viewDidLoad(){
        
    }
}
