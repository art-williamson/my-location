//
//  Location+CoreDataClass.swift
//  MyLocations
//
//  Created by Art Williamson on 3/27/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//
//

import Foundation
import CoreData
import MapKit

@objc(Location)
public class Location: NSManagedObject, MKAnnotation {

    public var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }

    public var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }

    public var subtitle: String? {
        return category
    }

    var hasPhoto: Bool {
        return photoId != nil
    }

    var photoURL: URL {
        assert(photoId != nil, "No photo ID set")
        let filename = "Photo-\(photoId!.intValue).jpg"
        return applicationDocumentsDirectory.appendingPathComponent(filename)
    }

    var photoImage: UIImage? {
        return UIImage(contentsOfFile: photoURL.path)
    }

    class func nextPhotoID() -> Int {
        let userDefaults = UserDefaults.standard
        let currentID = userDefaults.integer(forKey: "PhotoID") + 1
        userDefaults.set(currentID, forKey: "PhotoID")
        userDefaults.synchronize()
        return currentID
    }

    func removePhotoFile() {
        if hasPhoto {
            do {
                try FileManager.default.removeItem(at: photoURL)
            } catch {
                print("Error removing file: \(error)")
            }
        }
    }
}
