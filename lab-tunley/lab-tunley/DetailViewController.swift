//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//  Edited by William Reed on 9/8/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    
    // Pt 1 - Add a track property
    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pt 1 - Configure the UI elements with the passed in track


    }



}
