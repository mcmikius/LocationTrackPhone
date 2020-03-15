

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let home = HomeViewController()
    let nav = UINavigationController(rootViewController: home)
    self.window?.rootViewController = nav
    self.window?.makeKeyAndVisible()
    
    return true
  }
}
