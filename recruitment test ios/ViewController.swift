//
//  ViewController.swift
//  recruitment test ios
//
//  Created by Maxime POUWELS on 06/05/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let ViewControlCellHeight:CGFloat = 77
    let ShowAllViewHeight:CGFloat = 41

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var menuBtn: UIButton!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Siclo application"
        UIApplication.shared.statusBarStyle = .lightContent
        self.navigationController?.navigationBar.backgroundColor = UIColor.getUIColorForNavigationBarFrom(hexString: SicloColor.Blue)
        self.navigationController?.navigationBar.barTintColor = UIColor.getUIColorForNavigationBarFrom(hexString: SicloColor.Blue)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let newFont = UIFont(name: UIFont.fontNames(forFamilyName: "Comic Sans MS")[0], size: 14)!
        let attributes:[String: Any] = [
            NSFontAttributeName: newFont,
            NSForegroundColorAttributeName:UIColor.white
        ]

        self.navigationController?.navigationBar.titleTextAttributes = attributes
        self.navigationController?.navigationBar.isTranslucent = false
        
        initTableView()
        initSearchBar()
        renderShowAllView()
    }
    
    func initSearchBar(){
        self.menuBtn.setImage(UIImage(named: "HamburgerMenu")?.withRenderingMode(.alwaysTemplate), for: UIControlState.normal)
        self.menuBtn.backgroundColor = UIColor.getUIColorForNavigationBarFrom(hexString: SicloColor.Blue)
        self.menuBtn.tintColor = UIColor.white
        self.menuBtn.imageEdgeInsets = UIEdgeInsets(top:10, left:10, bottom:10, right:10)

        self.searchBar.layer.borderWidth = 1;
        self.searchBar.layer.borderColor = UIColor.getUIColorForNavigationBarFrom(hexString: SicloColor.Blue).cgColor

        let searchBarSubviews = self.searchBar.subviews.last
        let searchTextField:UITextField = searchBarSubviews?.subviews[1] as! UITextField
        let attributes = [
            NSForegroundColorAttributeName: UIColor.black,
            NSFontAttributeName : UIFont(name: "Comic Sans MS", size: 14)! // Note the !
        ]
        
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Search", attributes:attributes)
    }
    
    func initTableView(){
        self.tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: ShowAllViewHeight, right: 0)
        
    }
    
    func renderShowAllView(){
        if let topView = UIApplication.shared.keyWindow {
            let screenRect = UIScreen.main.bounds.size
            let showAllView = ShowAllView()
            showAllView.setFrame(frame: CGRect(x:0,
                                               y:screenRect.height - ShowAllViewHeight,
                                               width:screenRect.width,
                                               height:ShowAllViewHeight))
            topView.addSubview(showAllView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ViewControlCellHeight;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:MyTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyTableViewCell
        if (cell == nil)
        {
            cell = MyTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        if let c = cell{
            c.customImageView?.image = UIImage(named: "MonaLisa")
            c.customTextLabel?.text = "Mona Lisa"
            c.customDetailTextLabel?.text = "Leonardo Da Vinci, Louvre"
        }
        return cell!

    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }


}

