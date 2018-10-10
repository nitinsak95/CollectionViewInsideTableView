//
//  mainTableViewCell.swift
//  collectionInsideTable
//
//  Created by AFFIXUS IMAC1 on 3/27/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class mainTableViewCell: UITableViewCell {

    @IBOutlet weak var inCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension mainTableViewCell
{
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        inCollectionView.delegate = dataSourceDelegate
        inCollectionView.dataSource = dataSourceDelegate
        inCollectionView.tag = row
        inCollectionView.reloadData()
    }
}
