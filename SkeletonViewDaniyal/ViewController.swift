//
//  ViewController.swift
//  SkeletonViewDaniyal
//
//  Created by Daniyal Yousuf on 9/25/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit
import SkeletonView

class ViewController: UIViewController {

    @IBOutlet weak var baseTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.baseTableView.isSkeletonable = true;
      //  self.baseTableView.showAnimatedGradientSkeleton()
        self.baseTableView.tableFooterView = UIView()
        self.baseTableView.register(UINib.init(nibName: "CellA", bundle: nil), forCellReuseIdentifier: "cella")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController : SkeletonTableViewDelegate, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CellA = tableView.dequeueReusableCell(withIdentifier: "cella") as! CellA
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numSections(in collectionSkeletonView: UITableView) -> Int {
        return 1
        
    }
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return "cella"
    }
    
    
    
}

