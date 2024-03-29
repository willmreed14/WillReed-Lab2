//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//  Edited by William Reed on 9/8/23
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {

    // Pt 1 - Add a tracks property
    var tracks: [Track] = [] // initially set to an empty array that will later hold 'mockTracks' array'


    // Pt 1 - Add table view outlet
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Pt 1 - Set tracks property with mock tracks array
        tracks = Track.mockTracks
        print(tracks)
        
        // Set tableview source to itself
        tableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Pt 1 - Pass the selected track to the detail view controller
        
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let track = tracks[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.track = track
        }


    }
    
    // Deselect the table view row after viewing details.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    // Pt 1 - Add table view data source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // tell the table view how many rows to show
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "TrackCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell

        // Get the track that corresponds to the table view row
        let track = tracks[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: track)

        // return the cell for display in the table view
        return cell
    }
    


}
