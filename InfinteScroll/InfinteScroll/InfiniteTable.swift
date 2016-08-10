//
//  infiniteTable.swift
//  InfinteScroll
//
//  Created by vijayvir Singh on 10/08/16.
//  Copyright © 2016 vijayvir Singh. All rights reserved.
//

import UIKit

class InfiniteTable: UITableView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    
    // MARK: Outlets
    
    
    
    
    
    
    
    // MARK: Variable
    
    
    
    
    
    // MARK: CLC
    
    override func layoutSubviews()
    {
        
        
        resetContentOffsetIfNeeded()
        super.layoutSubviews()
        
    }
 
    // MARK: Functions
    func resetContentOffsetIfNeeded()
    {
        
        let indexpaths = self.indexPathsForVisibleRows
        
        let totalVisibleCells = indexpaths?.count
        
        var   contentOffset   : CGPoint = self.contentOffset;
        
    
        if( contentOffset.y <= 0.0)
        {
            
            contentOffset.y = self.contentSize.height/9
            
            self.contentOffset = contentOffset;
        }
        else if( contentOffset.y >= ( self.contentSize.height - self.bounds.size.height) )//scrollview content offset reached bottom minus the height of the tableview
        {
            //this scenario is same as the data repeating for 2nd time minus the height of the table view
            
           
                contentOffset.y = self.contentSize.height/9  - self.bounds.size.height
                
        
            
            self.contentOffset = contentOffset;
        }
        
    }
    
    
}
