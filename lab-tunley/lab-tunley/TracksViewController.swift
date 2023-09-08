//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//  Edited by William Reed on 9/8/23
//

import UIKit

class TracksViewController: UIViewController {

    // Pt 1 - Add a tracks property
    var tracks: [Track] = [] // initially set to an empty array that will later hold 'mockTracks' array'


    // TODO: Pt 1 - Add table view outlet

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pt 1 - Set tracks property with mock tracks array
        tracks = Track.mockTracks
        print(tracks)

        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller


    }

    // TODO: Pt 1 - Add table view data source methods


}
