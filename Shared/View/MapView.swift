//
//  MapView.swift
//  SwiftUICatalogs
//
//  Created by Sei Takayuki on 2021/01/10.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.33501993272811, longitude: -122.00912876460102),
                                             latitudinalMeters: 100000, longitudinalMeters: 10000)
    private var pins: [Pin] = [
        Pin(name: "Apple Park",
            coordinate: CLLocationCoordinate2D(latitude: 37.33501993272811,
                                               longitude: -122.00912876460102)),
        Pin(name: "Googleplex",
            coordinate: CLLocationCoordinate2D(latitude: 37.42231267779884,
                                               longitude: -122.08400387147682)),
        Pin(name: "Facebook HQ",
            coordinate: CLLocationCoordinate2D(latitude:37.48493581456912,
                                               longitude: -122.14960893718997)),
    ]
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: pins,
            annotationContent: { (pin) in
                MapAnnotation(coordinate: pin.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.7)) {
                    VStack {
                        Text(pin.name)
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                    }
                }
            })
            .edgesIgnoringSafeArea(.all)
    }
}

struct Pin: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
