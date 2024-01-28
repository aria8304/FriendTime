//
//  friend_timeApp.swift
//  friend_time
//
//  Created by Aria Mahinfallah on 1/27/24.
//

import SwiftUI
import CoreLocation


@main
struct friend_timeApp: App {
    var body: some Scene {
        WindowGroup {
            main_view()
        }
    }
}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation? = nil

    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first
    }
}
