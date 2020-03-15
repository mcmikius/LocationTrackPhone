

import UIKit
import MapKit

class FollowViewController: UIViewController {
  // MARK: Variables
  
  let session: TrackingSession
  var socket: WebSocket?
  
  // MARK: View Attributes
  
  let annotation = MKPointAnnotation()
  @IBOutlet weak var mapView: MKMapView!
  
  // MARK: Initializers
  
  init(session: TrackingSession) {
    self.session = session
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    mapView.addAnnotation(annotation)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    startSocket()
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    socket?.close()
  }
  
  // MARK: Updates
  
  func startSocket() {
    print("Insert web socket code here!")
  }
  
  func focusMapView(location: Location) {
    let mapCenter = CLLocationCoordinate2DMake(location.latitude, location.longitude)
    annotation.coordinate = mapCenter
    let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    let region = MKCoordinateRegion(center: mapCenter, span: span)
    mapView.region = region
  }
}
