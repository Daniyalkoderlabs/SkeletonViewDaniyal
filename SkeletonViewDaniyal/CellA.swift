//
//  CellA.swift
//  SkeletonViewDaniyal
//
//  Created by Daniyal Yousuf on 9/25/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit
import SkeletonView
class CellA: UITableViewCell {
    
    @IBOutlet weak var imageViewSide: UIImageView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.startSkeleton()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func startSkeleton() {
        imageViewSide.showAnimatedGradientSkeleton()
        lblDesc.showAnimatedGradientSkeleton()
        lblTitle.showAnimatedGradientSkeleton()
    }
    
    func stopSkeleton() {
        imageViewSide.stopSkeletonAnimation()
        lblDesc.stopSkeletonAnimation()
        lblTitle.stopSkeletonAnimation()
    }
    
}
