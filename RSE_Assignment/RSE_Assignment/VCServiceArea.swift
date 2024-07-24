//
//  VCServiceArea.swift
//  RSE_Assignment
//
//  Created by Onkar Murkar on 02/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit
import MapKit
class VCServiceArea: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    @IBAction func btnBackPressed(_ sender: Any) {
      self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 19.1143769, longitude: 73.0140298)
        centerMapOnLocation(location: initialLocation)
        
        let artwork1 = Artwork(title: "Servpro Technologies Pvt. Ltd",
                              locationName: "Main office",
                              discipline: "Xamarin Developer",
                              coordinate: CLLocationCoordinate2D(latitude: 19.1143769, longitude: 73.0140298))
        
        let artwork2 = Artwork(title: "Servpro Technologies Pvt. Ltd 1",
                               locationName: "Main office",
                               discipline: "Xamarin Developer",
                               coordinate: CLLocationCoordinate2D(latitude: 19.1243869, longitude: 73.0140298))
        
        let artwork3 = Artwork(title: "Servpro Technologies Pvt. Ltd 2",
                               locationName: "Main office",
                               discipline: "Xamarin Developer",
                               coordinate: CLLocationCoordinate2D(latitude: 19.1043969, longitude: 73.0140298))
       var artworks: [Artwork] = []
        artworks.append(artwork1)
        artworks.append(artwork2)
          artworks.append(artwork3)
        myMapView.addAnnotations(artworks)
        
        
    }
    let regionRadius: CLLocationDistance = 2000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        myMapView.setRegion(coordinateRegion, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
