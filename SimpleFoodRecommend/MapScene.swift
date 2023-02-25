import Combine
import NMapsMap
import SwiftUI
import UIKit


class NMapsViewController: UIViewController, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        let mapView = NMFMapView(frame: view.frame)
        let coord = NMGLatLng(lat: 36.3705324, lng: 127.34774832)
        if CLLocationManager.locationServicesEnabled() {
            print("위치 서비스 On 상태")
            locationManager.startUpdatingLocation()
            /// 위도 경도 지점으로 카메라 업데이트
            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: locationManager.location?.coordinate.longitude ?? 0))
            cameraUpdate.animation = .easeIn
            mapView.moveCamera(cameraUpdate)
            /// 마커 찍기
            let marker = NMFMarker()
            marker.position  = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: locationManager.location?.coordinate.longitude ?? 0)
            marker.mapView = mapView
            
            
            
            
            print(locationManager.location?.coordinate)
        } else {
            print("위치 서비스 Off 상태")
        }
        
        
        
        
        //        let mapView = NMFNaverMapView(frame: view.frame)
        //        mapView.showLocationButton = true
        //        naverMapView.positionMode = .normal
        //        let cameraUpdate = NMFCameraUpdate(scrollTo: coord)
        //        naverMapView.moveCamera(cameraUpdate)
        ////
        //        let locationOverlay = naverMapView.locationOverlay
        //        locationOverlay.hidden = true
        //        locationOverlay.location = coord
        
        view.addSubview(mapView)
        
    }
}

struct MyView: UIViewControllerRepresentable {
    typealias UIViewControllerType = NMapsViewController
    func makeUIViewController(context: Context) -> NMapsViewController {
        let vc = NMapsViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: NMapsViewController, context: Context) {
        
    }
}


struct MapScene: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = <#type#>
    
    @ObservableObject var viewModel = MapSceneViewModel()
}

class MapSceneViewModel: ObservableObject {
    
}

struct MapScene_Previews: PreviewProvider {
    static var previews: some View {
        MapScene()
    }
}
