import SwiftUI
import CoreLocation
import NMapsMap

//class NMapsViewController: UIViewController, CLLocationManagerDelegate {
//    var locationManager = CLLocationManager()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//
//        let mapView = NMFMapView(frame: view.frame)
//        let coord = NMGLatLng(lat: 36.3705324, lng: 127.34774832)
//        if CLLocationManager.locationServicesEnabled() {
//            print("위치 서비스 On 상태")
//            locationManager.startUpdatingLocation()
//            /// 위도 경도 지점으로 카메라 업데이트
//            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: locationManager.location?.coordinate.longitude ?? 0))
//            cameraUpdate.animation = .easeIn
//            mapView.moveCamera(cameraUpdate)
//            /// 마커 찍기
//            let marker = NMFMarker()
//            marker.position  = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: locationManager.location?.coordinate.longitude ?? 0)
//            marker.mapView = mapView
//
//
//
//
//            print(locationManager.location?.coordinate)
//        } else {
//            print("위치 서비스 Off 상태")
//        }
//
//
//
//
//        //        let mapView = NMFNaverMapView(frame: view.frame)
//        //        mapView.showLocationButton = true
//        //        naverMapView.positionMode = .normal
//        //        let cameraUpdate = NMFCameraUpdate(scrollTo: coord)
//        //        naverMapView.moveCamera(cameraUpdate)
//        ////
//        //        let locationOverlay = naverMapView.locationOverlay
//        //        locationOverlay.hidden = true
//        //        locationOverlay.location = coord
//
//        view.addSubview(mapView)
//
//    }
//}
//
//struct MyView: UIViewControllerRepresentable {
//    typealias UIViewControllerType = NMapsViewController
//    func makeUIViewController(context: Context) -> NMapsViewController {
//        let vc = NMapsViewController()
//        return vc
//    }
//
//    func updateUIViewController(_ uiViewController: NMapsViewController, context: Context) {
//
//    }
//}

struct ContentView: View {
    @State var recommendedMenu: String = "음식 추천"
    @State var isPresentedMap = false
    private var menuDataManager: MenuDataManager = MenuDataManager()
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    Spacer()
                    Image(recommendedMenu)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .cornerRadius(30)
                    
                    Text(recommendedMenu)
                        .font(.system(size: 30))
                        .padding(.bottom, 10)
                    NavigationLink {
                        MyView()
                    } label: {
                        Text("지도")
                    }
                    Button {
                        isPresentedMap = true
                    } label: {
                        Text("GPS")
                    }.sheet(isPresented: $isPresentedMap) {
                        MyView()
                    }
                    
                    Spacer()
                    Button {
                        recommendedMenu = menuDataManager.recommendMenu()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 170, height: 80)
                            Text("음식을 추천해드릴게요!").foregroundColor(.black)
                        }
                        
                    }
                    Spacer()
                        .frame(height: 100)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
