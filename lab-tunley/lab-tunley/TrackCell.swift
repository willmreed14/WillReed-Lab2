//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Will Reed on 9/8/23.
//

import UIKit

class TrackCell: UITableViewCell {
    
    // Pt1 - Create outlets from each label and image view in the storyboard cell
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
