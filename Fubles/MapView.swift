import SwiftUI
import MapKit

struct MapView: View {
    
    @State var hasReloaded = false
    
    @State private var region = MKCoordinateRegion(
                   center: CLLocationCoordinate2D(
                       latitude: 40.83834587046632,
                       longitude: 14.254053016537693),
                   span: MKCoordinateSpan(
                       latitudeDelta: 0.03,
                       longitudeDelta: 0.03)
                   )

    
    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region)
                .frame(height: 400)
                .cornerRadius(15)
                .padding(16)
                
                
                
                //                MapMarker(coordinate: CLLocationCoordinate2D(latitude: locat.latitude, longitude: locat.longitude), tint: .blue)

        }
        
    }
    
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
