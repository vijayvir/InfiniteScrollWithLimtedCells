//
//  ViewController.swift
//  InfinteScroll
//
//  Created by vijayvir Singh on 10/08/16.
//  Copyright © 2016 vijayvir Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var tableview: InfiniteTable!

    @IBOutlet weak var lblScrollIndicator: UILabel!
    // MARK: Variable
    
  
    
    // MARK: CLC
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
         lblScrollIndicator.hidden = true
    }

    override func didReceiveMemoryWarning()
    {
        
        super.didReceiveMemoryWarning()
        
    
    }

    // MARK: Actions
    
    // MARK: Functions
    
  
    
    // MARK: Tableview dataSourse > delgate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
     
        return 9 * 3
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        
        let  cellInndentifierHeader = "InfinteTableViewCell"
        weak var  cell: InfinteTableViewCell! = tableView.dequeueReusableCellWithIdentifier(cellInndentifierHeader) as! InfinteTableViewCell
        
        if((cell) != nil)
            
        {
            cell.lblDesc.text = " \(indexPath.row % 9 ) -> \(indexPath.row % 9 )"
            return cell
        }
        
        return cell
    }

    
    // MARK: Scrollview Delegate 
    
     func scrollViewDidScroll(scrollView: UIScrollView)
    {
        lblScrollIndicator.hidden = false
    }
    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
    {
         lblScrollIndicator.hidden = true
    }
    
}

